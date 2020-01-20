{include file="common/subheader.tpl" title=__("additional product info") target="#product_condition"}
<div id="product_condition" class="in collapse">
    <div class="control-group">
    <label class="control-label" for="product_condition">{__("Product condition")}:</label>
        <div class="controls">
            <select name="product_data[product_condition]" id="elm_product_condition">
                <option value="excellent" {if $product_data.product_condition == "excellent"}selected="selected"{/if}>{__("excellent")}</option>
                <option value="good" {if $product_data.product_condition == "good"}selected="selected"{/if}>{__("good")}</option>
                <option value="average" {if $product_data.product_condition == "average"}selected="selected"{/if}>{__("average")}</option>
                <option value="poor" {if $product_data.product_condition == "poor"}selected="selected"{/if}>{__("poor")}</option>
                <option value="destroyed" {if $product_data.product_condition == "destroyed"}selected="selected"{/if}>{__("destroyed")}</option>
            </select>
        </div>
    </div>
</div>