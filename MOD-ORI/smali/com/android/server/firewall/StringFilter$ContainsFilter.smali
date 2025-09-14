.class public final Lcom/android/server/firewall/StringFilter$ContainsFilter;
.super Lcom/android/server/firewall/StringFilter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFilterValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/StringFilter$1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/firewall/StringFilter;-><init>(Lcom/android/server/firewall/StringFilter$1;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/firewall/StringFilter$ContainsFilter;->mFilterValue:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final matchesValue(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/firewall/StringFilter$ContainsFilter;->mFilterValue:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method
