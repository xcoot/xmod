.class public final Lcom/android/server/firewall/PortFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# static fields
.field public static final FACTORY:Lcom/android/server/firewall/PortFilter$1;


# instance fields
.field public final mLowerBound:I

.field public final mUpperBound:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/firewall/PortFilter$1;

    .line 2
    .line 3
    const-string/jumbo v1, "port"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/server/firewall/PortFilter;->FACTORY:Lcom/android/server/firewall/PortFilter$1;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/firewall/PortFilter;->mLowerBound:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/firewall/PortFilter;->mUpperBound:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, -0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p1, p2

    .line 14
    :goto_0
    if-eq p1, p2, :cond_3

    .line 15
    .line 16
    iget p3, p0, Lcom/android/server/firewall/PortFilter;->mLowerBound:I

    .line 17
    .line 18
    if-eq p3, p2, :cond_1

    .line 19
    .line 20
    if-gt p3, p1, :cond_3

    .line 21
    .line 22
    :cond_1
    iget p0, p0, Lcom/android/server/firewall/PortFilter;->mUpperBound:I

    .line 23
    .line 24
    if-eq p0, p2, :cond_2

    .line 25
    .line 26
    if-lt p0, p1, :cond_3

    .line 27
    .line 28
    :cond_2
    const/4 p0, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_3
    const/4 p0, 0x0

    .line 31
    :goto_1
    return p0
.end method
