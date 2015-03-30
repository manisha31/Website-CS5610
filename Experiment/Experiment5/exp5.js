$(document).ready(function () {

      //This function runs when anything with a class 'tab' is clicked
    $('.tab').click(function () {

        // It removes the 'active' class from the active tab.
        $('#tabs_container > .tabs > li.active')
            .removeClass('active');

        // It adds the 'active' class to the clicked tab.
        $(this).parent().addClass('active');

        // It removes the 'tab_contents_active' class from the visible tab contents.
        $('#tabs_container > .tab_contents_container > div.tab_contents_active')
            .removeClass('tab_contents_active');

        // It adds the 'tab_contents_active' class to the associated tab contents.
        $(this.rel).addClass('tab_contents_active');

    });
});