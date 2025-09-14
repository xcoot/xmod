.class public final Lcom/android/server/accounts/TokenCache;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;


# virtual methods
.method public final put(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJ)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    cmp-long v0, v0, p6

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Lcom/android/server/accounts/TokenCache$Key;

    .line 14
    .line 15
    invoke-direct {v0, p1, p3, p4, p5}, Lcom/android/server/accounts/TokenCache$Key;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 16
    .line 17
    .line 18
    new-instance p3, Lcom/android/server/accounts/TokenCache$Value;

    .line 19
    .line 20
    invoke-direct {p3, p6, p7, p2}, Lcom/android/server/accounts/TokenCache$Value;-><init>(JLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/accounts/TokenCache;->mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance p4, Landroid/util/Pair;

    .line 29
    .line 30
    iget-object p5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 31
    .line 32
    invoke-direct {p4, p5, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mTokenEvictors:Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {p2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    check-cast p2, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    .line 42
    .line 43
    if-nez p2, :cond_1

    .line 44
    .line 45
    new-instance p2, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    .line 46
    .line 47
    invoke-direct {p2, p0}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;-><init>(Lcom/android/server/accounts/TokenCache$TokenLruCache;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object p5, p2, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->mKeys:Ljava/util/List;

    .line 51
    .line 52
    check-cast p5, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    iget-object p5, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mTokenEvictors:Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-virtual {p5, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mAccountEvictors:Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    .line 69
    .line 70
    if-nez p2, :cond_2

    .line 71
    .line 72
    new-instance p2, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    .line 73
    .line 74
    invoke-direct {p2, p0}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;-><init>(Lcom/android/server/accounts/TokenCache$TokenLruCache;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    iget-object p4, p2, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->mKeys:Ljava/util/List;

    .line 78
    .line 79
    check-cast p4, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    iget-object p4, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mAccountEvictors:Ljava/util/HashMap;

    .line 85
    .line 86
    invoke-virtual {p4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0, p3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    return-void
.end method
