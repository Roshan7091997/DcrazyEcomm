<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cart</title>

<%@ include file="includes/head.jsp"%>
</head>
<body>
    <%@ include file="includes/navbar.jsp"%>
    
    <div class="d-flex py-3">
        <h3>Total Price: $ ${(total>0)?dcf.format(total):0} </h3>
        <a class="mx-3 btn btn-primary" href="cart-check-out">Check Out</a>
    </div>
        
    <table class="table table-light">
        <thead>
            <tr>
                <th scope="col">Name</th>
                <th scope="col">Category</th>
                <th scope="col">Price</th>
                <th scope="col">Buy Now</th>
                <th scope="col">Cancel</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Women Shoes</td>
                <td>shoes</td>
                <td>45rs</td>
                <td>
                    <form action="" method="post" class="form-inline">
                        <input type="hidden" name="id" value="1" class="form-input">
                        <div class="form-group d-flex justify-content-between">
                            
                        </div>
                        <button type="submit" class="btn btn-primary btn-sm">Buy</button>
                    </form>
                </td>
                <td>
                    <a class="btn btn-sm btn-danger" href="">Remove</a>
                </td>
            </tr>
          
        </tbody>
    </table>
</div>

<%@ include file="includes/footer.jsp"%>

</body>
</html>
