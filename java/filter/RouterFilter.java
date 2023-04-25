package filter;

import java.io.IOException;
import java.net.http.HttpResponse;
import java.util.List;
import java.util.Objects;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Users;

@WebFilter("/*")
public class RouterFilter extends HttpFilter implements Filter {

	public RouterFilter() {
		super();
	}

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		List<String> URLS = List.of("/api/login","/apihome","/");

		HttpServletRequest httpReq = (HttpServletRequest) request;
		HttpServletResponse httpResp = (HttpServletResponse) response;

		boolean isStaticResource = httpReq.getRequestURI().startsWith("/JavaWeb/reources/");

		HttpSession session = httpReq.getSession();
		Object sessionVal = session.getAttribute("session");
		String path = httpReq.getServletPath();

		if (Objects.isNull(sessionVal) && !isStaticResource && !URLS.contains(path)) {
//			httpResp.sendError(HttpServletResponse.SC_UNAUTHORIZED);
			httpResp.sendRedirect("/JavaWeb/api/login");

		} else {
			if (sessionVal != null && path.contains("/api/manager")) {
				Users users = (Users) sessionVal;

				if (users.isRole()) {
					chain.doFilter(request, response);
				} else {
					httpResp.sendError(HttpServletResponse.SC_UNAUTHORIZED);
				}
			}
			chain.doFilter(request, response);
		}

	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
