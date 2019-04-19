from django.shortcuts import render

from listings.models import Listing
from realtors.models import Realtor

from listings.choices import price_choices
from listings.choices import state_choices


def index(request):
    listings = Listing.objects.order_by('-list_date').filter(is_published=True)[:3]

    context = {
        'listings': listings,
        'price_choices': price_choices,
        'state_choices': state_choices,
    }

    return render(request, 'pages/index.html', context)


def about(request):
    realtors = Realtor.objects.order_by('-hire_date')
    sailor_of_month = Realtor.objects.get(is_mvp=True)

    context = {
        'realtors': realtors,
        'best': sailor_of_month
    }

    return render(request, 'pages/about.html', context)
