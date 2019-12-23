{include file="common/subheader.tpl" title=__("additional product info") target="#product_condition"}
<div id="product_condition" class="in collapse">
    <div class="control-group">
    <label class="control-label" for="product_condition">{__("Product condition")}:</label>
        <div class="controls">
            <select class="span5" name="product_data[product_condition]" id="elm_product_condition">
                <option value="excellent" {if $product_data.product_condition == "excellent"}selected="selected"{/if}>{__("brand-new")}</option>
                <option value="good" {if $product_data.product_condition == "good"}selected="selected"{/if}>{__("almost as new")}</option>
                <option value="average" {if $product_data.product_condition == "average"}selected="selected"{/if}>{__("has minor deffects")}</option>
                <option value="poor" {if $product_data.product_condition == "poor"}selected="selected"{/if}>{__("has visible deffects of used")}</option>
                <option value="destroyed" {if $product_data.product_condition == "destroyed"}selected="selected"{/if}>{__("unusable")}</option>
            </select>
        </div>
    </div>
</div>