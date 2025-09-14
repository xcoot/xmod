.class public final Lcom/android/server/biometrics/sensors/AuthResultCoordinator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAuthenticatorState:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->mAuthenticatorState:Ljava/util/Map;

    .line 11
    const/16 p0, 0xf

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const/16 p0, 0xff

    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object p0

    .line 31
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const/16 p0, 0xfff

    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object p0

    .line 40
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method


# virtual methods
.method public final updateState(ILjava/util/function/IntFunction;)V
    .locals 5

    .line 1
    const/16 v0, 0xfff

    .line 3
    const/16 v1, 0xff

    .line 5
    const/16 v2, 0xf

    .line 7
    if-eq p1, v2, :cond_0

    .line 9
    if-eq p1, v1, :cond_1

    .line 11
    if-eq p1, v0, :cond_2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->mAuthenticatorState:Ljava/util/Map;

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v3

    .line 20
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->mAuthenticatorState:Ljava/util/Map;

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v2

    .line 26
    check-cast v4, Landroid/util/ArrayMap;

    .line 28
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/Integer;

    .line 34
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 37
    move-result v2

    .line 38
    invoke-interface {p2, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/Integer;

    .line 44
    check-cast p1, Landroid/util/ArrayMap;

    .line 46
    invoke-virtual {p1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->mAuthenticatorState:Ljava/util/Map;

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v2

    .line 55
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->mAuthenticatorState:Ljava/util/Map;

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v1

    .line 61
    check-cast v3, Landroid/util/ArrayMap;

    .line 63
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Ljava/lang/Integer;

    .line 69
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 72
    move-result v1

    .line 73
    invoke-interface {p2, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Ljava/lang/Integer;

    .line 79
    check-cast p1, Landroid/util/ArrayMap;

    .line 81
    invoke-virtual {p1, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_2
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->mAuthenticatorState:Ljava/util/Map;

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v1

    .line 90
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->mAuthenticatorState:Ljava/util/Map;

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v0

    .line 96
    check-cast p0, Landroid/util/ArrayMap;

    .line 98
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    move-result-object p0

    .line 102
    check-cast p0, Ljava/lang/Integer;

    .line 104
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 107
    move-result p0

    .line 108
    invoke-interface {p2, p0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    .line 111
    move-result-object p0

    .line 112
    check-cast p0, Ljava/lang/Integer;

    .line 114
    check-cast p1, Landroid/util/ArrayMap;

    .line 116
    invoke-virtual {p1, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :goto_0
    return-void
.end method
