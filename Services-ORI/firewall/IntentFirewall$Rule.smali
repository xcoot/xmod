.class public final Lcom/android/server/firewall/IntentFirewall$Rule;
.super Lcom/android/server/firewall/AndFilter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public block:Z

.field public log:Z

.field public final mComponentFilters:Ljava/util/ArrayList;

.field public final mIntentFilters:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/server/firewall/FilterList;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mIntentFilters:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentFilters:Ljava/util/ArrayList;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final readChild(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "intent-filter"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;-><init>(Lcom/android/server/firewall/IntentFirewall$Rule;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mIntentFilters:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string/jumbo v1, "component-filter"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    const-string/jumbo v1, "name"

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentFilters:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 60
    .line 61
    const-string p1, "Invalid component name: "

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_2
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 72
    .line 73
    const-string v1, "Component name must be specified."

    .line 74
    .line 75
    invoke-direct {p0, v1, p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    throw p0

    .line 79
    :cond_3
    invoke-static {p1}, Lcom/android/server/firewall/IntentFirewall;->parseFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object p0, p0, Lcom/android/server/firewall/FilterList;->children:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    :goto_0
    return-void
.end method

.method public final bridge synthetic readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/FilterList;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/IntentFirewall$Rule;
    .locals 2

    const/4 v0, 0x0

    .line 1
    const-string/jumbo v1, "block"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->block:Z

    .line 2
    const-string/jumbo v1, "log"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->log:Z

    .line 3
    invoke-super {p0, p1}, Lcom/android/server/firewall/FilterList;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/FilterList;

    return-object p0
.end method
