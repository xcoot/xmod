.class public abstract Lcom/android/server/firewall/StringFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# static fields
.field public static final ACTION:Lcom/android/server/firewall/StringFilter$1;

.field public static final COMPONENT:Lcom/android/server/firewall/StringFilter$1;

.field public static final COMPONENT_NAME:Lcom/android/server/firewall/StringFilter$1;

.field public static final COMPONENT_PACKAGE:Lcom/android/server/firewall/StringFilter$1;

.field public static final DATA:Lcom/android/server/firewall/StringFilter$1;

.field public static final HOST:Lcom/android/server/firewall/StringFilter$1;

.field public static final MIME_TYPE:Lcom/android/server/firewall/StringFilter$1;

.field public static final PATH:Lcom/android/server/firewall/StringFilter$1;

.field public static final SCHEME:Lcom/android/server/firewall/StringFilter$1;

.field public static final SSP:Lcom/android/server/firewall/StringFilter$1;


# instance fields
.field public final mValueProvider:Lcom/android/server/firewall/StringFilter$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/firewall/StringFilter$1;

    .line 3
    const-string/jumbo v1, "component"

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {v0, v1, v2}, Lcom/android/server/firewall/StringFilter$1;-><init>(Ljava/lang/String;I)V

    .line 10
    sput-object v0, Lcom/android/server/firewall/StringFilter;->COMPONENT:Lcom/android/server/firewall/StringFilter$1;

    .line 12
    new-instance v0, Lcom/android/server/firewall/StringFilter$1;

    .line 14
    const-string/jumbo v1, "component-name"

    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-direct {v0, v1, v2}, Lcom/android/server/firewall/StringFilter$1;-><init>(Ljava/lang/String;I)V

    .line 21
    sput-object v0, Lcom/android/server/firewall/StringFilter;->COMPONENT_NAME:Lcom/android/server/firewall/StringFilter$1;

    .line 23
    new-instance v0, Lcom/android/server/firewall/StringFilter$1;

    .line 25
    const-string/jumbo v1, "component-package"

    .line 28
    const/4 v2, 0x3

    .line 29
    invoke-direct {v0, v1, v2}, Lcom/android/server/firewall/StringFilter$1;-><init>(Ljava/lang/String;I)V

    .line 32
    sput-object v0, Lcom/android/server/firewall/StringFilter;->COMPONENT_PACKAGE:Lcom/android/server/firewall/StringFilter$1;

    .line 34
    new-instance v0, Lcom/android/server/firewall/StringFilter$1;

    .line 36
    const-string v1, "action"

    .line 38
    const/4 v2, 0x4

    .line 39
    invoke-direct {v0, v1, v2}, Lcom/android/server/firewall/StringFilter$1;-><init>(Ljava/lang/String;I)V

    .line 42
    sput-object v0, Lcom/android/server/firewall/StringFilter;->ACTION:Lcom/android/server/firewall/StringFilter$1;

    .line 44
    new-instance v0, Lcom/android/server/firewall/StringFilter$1;

    .line 46
    const-string/jumbo v1, "data"

    .line 49
    const/4 v2, 0x5

    .line 50
    invoke-direct {v0, v1, v2}, Lcom/android/server/firewall/StringFilter$1;-><init>(Ljava/lang/String;I)V

    .line 53
    sput-object v0, Lcom/android/server/firewall/StringFilter;->DATA:Lcom/android/server/firewall/StringFilter$1;

    .line 55
    new-instance v0, Lcom/android/server/firewall/StringFilter$1;

    .line 57
    const-string/jumbo v1, "mime-type"

    .line 60
    const/4 v2, 0x6

    .line 61
    invoke-direct {v0, v1, v2}, Lcom/android/server/firewall/StringFilter$1;-><init>(Ljava/lang/String;I)V

    .line 64
    sput-object v0, Lcom/android/server/firewall/StringFilter;->MIME_TYPE:Lcom/android/server/firewall/StringFilter$1;

    .line 66
    new-instance v0, Lcom/android/server/firewall/StringFilter$1;

    .line 68
    const-string/jumbo v1, "scheme"

    .line 71
    const/4 v2, 0x7

    .line 72
    invoke-direct {v0, v1, v2}, Lcom/android/server/firewall/StringFilter$1;-><init>(Ljava/lang/String;I)V

    .line 75
    sput-object v0, Lcom/android/server/firewall/StringFilter;->SCHEME:Lcom/android/server/firewall/StringFilter$1;

    .line 77
    new-instance v0, Lcom/android/server/firewall/StringFilter$1;

    .line 79
    const-string/jumbo v1, "scheme-specific-part"

    .line 82
    const/16 v2, 0x8

    .line 84
    invoke-direct {v0, v1, v2}, Lcom/android/server/firewall/StringFilter$1;-><init>(Ljava/lang/String;I)V

    .line 87
    sput-object v0, Lcom/android/server/firewall/StringFilter;->SSP:Lcom/android/server/firewall/StringFilter$1;

    .line 89
    new-instance v0, Lcom/android/server/firewall/StringFilter$1;

    .line 91
    const-string/jumbo v1, "host"

    .line 94
    const/16 v2, 0x9

    .line 96
    invoke-direct {v0, v1, v2}, Lcom/android/server/firewall/StringFilter$1;-><init>(Ljava/lang/String;I)V

    .line 99
    sput-object v0, Lcom/android/server/firewall/StringFilter;->HOST:Lcom/android/server/firewall/StringFilter$1;

    .line 101
    new-instance v0, Lcom/android/server/firewall/StringFilter$1;

    .line 103
    const-string/jumbo v1, "path"

    .line 106
    const/4 v2, 0x1

    .line 107
    invoke-direct {v0, v1, v2}, Lcom/android/server/firewall/StringFilter$1;-><init>(Ljava/lang/String;I)V

    .line 110
    sput-object v0, Lcom/android/server/firewall/StringFilter;->PATH:Lcom/android/server/firewall/StringFilter$1;

    .line 112
    return-void
.end method

.method public constructor <init>(Lcom/android/server/firewall/StringFilter$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/firewall/StringFilter;->mValueProvider:Lcom/android/server/firewall/StringFilter$1;

    .line 6
    return-void
.end method


# virtual methods
.method public final matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/firewall/StringFilter;->mValueProvider:Lcom/android/server/firewall/StringFilter$1;

    .line 3
    iget p1, p1, Lcom/android/server/firewall/StringFilter$1;->$r8$classId:I

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 8
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    :goto_0
    move-object p6, p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    goto :goto_0

    .line 22
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    goto :goto_0

    .line 44
    :pswitch_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    goto :goto_0

    .line 55
    :pswitch_3
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 58
    move-result-object p6

    .line 59
    goto :goto_1

    .line 60
    :pswitch_4
    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    goto :goto_0

    .line 67
    :pswitch_5
    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    goto :goto_0

    .line 74
    :pswitch_6
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    goto :goto_0

    .line 85
    :pswitch_7
    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    goto :goto_0

    .line 92
    :goto_1
    :pswitch_8
    invoke-virtual {p0, p6}, Lcom/android/server/firewall/StringFilter;->matchesValue(Ljava/lang/String;)Z

    .line 95
    move-result p0

    .line 96
    return p0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract matchesValue(Ljava/lang/String;)Z
.end method
