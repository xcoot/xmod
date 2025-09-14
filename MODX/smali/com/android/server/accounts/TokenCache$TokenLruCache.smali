.class public final Lcom/android/server/accounts/TokenCache$TokenLruCache;
.super Landroid/util/LruCache;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAccountEvictors:Ljava/util/HashMap;

.field public mTokenEvictors:Ljava/util/HashMap;


# virtual methods
.method public final entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/server/accounts/TokenCache$Key;

    .line 3
    check-cast p3, Lcom/android/server/accounts/TokenCache$Value;

    .line 5
    check-cast p4, Lcom/android/server/accounts/TokenCache$Value;

    .line 7
    if-eqz p3, :cond_0

    .line 9
    if-nez p4, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mTokenEvictors:Ljava/util/HashMap;

    .line 13
    new-instance p1, Landroid/util/Pair;

    .line 15
    iget-object p2, p2, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    .line 17
    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 19
    iget-object p3, p3, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    .line 21
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    .line 30
    if-eqz p0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->evict()V

    .line 35
    :cond_0
    return-void
.end method

.method public final sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/accounts/TokenCache$Key;

    .line 3
    check-cast p2, Lcom/android/server/accounts/TokenCache$Value;

    .line 5
    iget-object p0, p2, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    move-result p0

    .line 11
    return p0
.end method
