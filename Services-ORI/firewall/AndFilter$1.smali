.class public final Lcom/android/server/firewall/AndFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/server/firewall/AndFilter;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/firewall/FilterList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/firewall/FilterList;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/FilterList;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method
