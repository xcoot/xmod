.class public final Lcom/android/server/firewall/StringFilter$IsNullFilter;
.super Lcom/android/server/firewall/StringFilter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIsNull:Z


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/StringFilter$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/server/firewall/StringFilter;-><init>(Lcom/android/server/firewall/StringFilter$1;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/server/firewall/StringFilter$IsNullFilter;->mIsNull:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/firewall/StringFilter$1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/firewall/StringFilter;-><init>(Lcom/android/server/firewall/StringFilter$1;)V

    .line 2
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/firewall/StringFilter$IsNullFilter;->mIsNull:Z

    return-void
.end method


# virtual methods
.method public final matchesValue(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    move p1, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move p1, v0

    .line 8
    :goto_0
    iget-boolean p0, p0, Lcom/android/server/firewall/StringFilter$IsNullFilter;->mIsNull:Z

    .line 9
    .line 10
    if-ne p1, p0, :cond_1

    .line 11
    .line 12
    move v0, v1

    .line 13
    :cond_1
    return v0
.end method
