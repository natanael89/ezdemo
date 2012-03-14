<div class="zone-layout-{$zone_layout|downcase()}">
    <div class="row">
        <div class="span4">
            <aside>
                <section class="content-view-aside">
                    {if and( is_set( $zones[0].blocks ), $zones[0].blocks|count() )}
                    {foreach $zones[0].blocks as $block}
                        {include uri='design:parts/zone_block.tpl' zone=$zones[0]}
                    {/foreach}
                    {/if}
                </section>
            </aside>
        </div>
        <div class="span8">
            <section>
                {if and( is_set( $zones[1].blocks ), $zones[1].blocks|count() )}
                {foreach $zones[1].blocks as $block}
                    {include uri='design:parts/zone_block.tpl' zone=$zones[1]}
                {/foreach}
                {/if}
            </section>
        </div>
        <div class="row">
            <div class="span12">
                <section>
                    {if and( is_set( $zones[2].blocks ), $zones[2].blocks|count() )}
                    {foreach $zones[2].blocks as $block}
                        {include uri='design:parts/zone_block.tpl' zone=$zones[2]}
                    {/foreach}
                    {/if}
                </section>
            </div>
        </div>
    </div>
</div>
