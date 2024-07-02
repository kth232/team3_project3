<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layouts" %>

<layout:main>
<ul class="pokemon-list">
        <c:if test="${items == null || items.isEmpty()}">
            <li class='no-data'>조회된 포켓몬이 없습니다.</li>

        </c:if>
        <c:if test="${items != null && !items.isEmpty()}">
            <c:forEach var="item" items="${items}">
                <li>
                    <a class="a" href="<c:url value='/pokemon/view/${item.seq}' />">
                        <img src="${item.frontImage}" alt="${item.nameKr}">
                    </a>
                    <div class="p-name">
                        <p class="pokemonNum">No.${item.seq}</p>
                        <p class="pokemonName">${item.nameKr}</p>
                    </div>
                </li>
            </c:forEach>
        </c:if>
    </ul>

</layout:main>