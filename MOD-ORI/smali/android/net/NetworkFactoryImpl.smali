.class public final Landroid/net/NetworkFactoryImpl;
.super Landroid/net/NetworkFactoryLegacyImpl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INVINCIBLE_SCORE:Landroid/net/NetworkScore;


# instance fields
.field public final mExecutor:Landroid/net/NetworkFactoryImpl$$ExternalSyntheticLambda0;

.field public final mNetworkRequests:Ljava/util/Map;

.field public final mRequestCallback:Landroid/net/NetworkFactoryImpl$1;

.field public mScore:Landroid/net/NetworkScore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/net/NetworkScore$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/NetworkScore$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x3e8

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/net/NetworkScore$Builder;->setLegacyInt(I)Landroid/net/NetworkScore$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Landroid/net/NetworkFactoryImpl;->INVINCIBLE_SCORE:Landroid/net/NetworkScore;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkFactory;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Landroid/net/NetworkCapabilities$Builder;->withoutDefaultCapabilities()Landroid/net/NetworkCapabilities$Builder;

    .line 5
    .line 6
    .line 7
    move-result-object p4

    .line 8
    invoke-virtual {p4}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    .line 9
    .line 10
    .line 11
    move-result-object p4

    .line 12
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/NetworkFactoryLegacyImpl;-><init>(Landroid/net/NetworkFactory;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroid/net/NetworkFactoryImpl;->mNetworkRequests:Ljava/util/Map;

    .line 21
    .line 22
    new-instance p1, Landroid/net/NetworkScore$Builder;

    .line 23
    .line 24
    invoke-direct {p1}, Landroid/net/NetworkScore$Builder;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    invoke-virtual {p1, p2}, Landroid/net/NetworkScore$Builder;->setLegacyInt(I)Landroid/net/NetworkScore$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Landroid/net/NetworkFactoryImpl;->mScore:Landroid/net/NetworkScore;

    .line 37
    .line 38
    new-instance p1, Landroid/net/NetworkFactoryImpl$1;

    .line 39
    .line 40
    invoke-direct {p1, p0}, Landroid/net/NetworkFactoryImpl$1;-><init>(Landroid/net/NetworkFactoryImpl;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Landroid/net/NetworkFactoryImpl;->mRequestCallback:Landroid/net/NetworkFactoryImpl$1;

    .line 44
    .line 45
    new-instance p1, Landroid/net/NetworkFactoryImpl$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    invoke-direct {p1, p0}, Landroid/net/NetworkFactoryImpl$$ExternalSyntheticLambda0;-><init>(Landroid/net/NetworkFactoryImpl;)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Landroid/net/NetworkFactoryImpl;->mExecutor:Landroid/net/NetworkFactoryImpl$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/net/NetworkFactoryImpl;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroid/net/NetworkFactoryImpl;->mNetworkRequests:Ljava/util/Map;

    .line 9
    .line 10
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "  "

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public final getRequestCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/NetworkFactoryImpl;->mNetworkRequests:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final handleAddRequest(Landroid/net/NetworkRequest;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/NetworkFactoryImpl;->mNetworkRequests:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;

    .line 10
    .line 11
    iget-object v1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mParent:Landroid/net/NetworkFactory;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v2, "got request "

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v1, v0}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;-><init>(Landroid/net/NetworkRequest;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Landroid/net/NetworkFactoryImpl;->mNetworkRequests:Ljava/util/Map;

    .line 39
    .line 40
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {v1, p1}, Landroid/net/NetworkFactory;->acceptRequest(Landroid/net/NetworkRequest;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_1

    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    iput-boolean p0, v0, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;->requested:Z

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Landroid/net/NetworkFactory;->needNetworkFor(Landroid/net/NetworkRequest;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/net/NetworkFactoryImpl;->mRequestCallback:Landroid/net/NetworkFactoryImpl$1;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/net/NetworkFactoryImpl;->mExecutor:Landroid/net/NetworkFactoryImpl$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    iget-object v3, p0, Landroid/net/NetworkFactoryLegacyImpl;->mParent:Landroid/net/NetworkFactory;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_0
    sget-object p1, Landroid/net/NetworkFactoryImpl;->INVINCIBLE_SCORE:Landroid/net/NetworkScore;

    .line 14
    .line 15
    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    .line 16
    .line 17
    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    .line 18
    .line 19
    invoke-virtual {v0, p1, p0, v2, v1}, Landroid/net/NetworkProvider;->registerNetworkOffer(Landroid/net/NetworkScore;Landroid/net/NetworkCapabilities;Ljava/util/concurrent/Executor;Landroid/net/NetworkProvider$NetworkOfferCallback;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :pswitch_1
    iget-object p1, p0, Landroid/net/NetworkFactoryImpl;->mScore:Landroid/net/NetworkScore;

    .line 24
    .line 25
    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    .line 26
    .line 27
    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    .line 28
    .line 29
    invoke-virtual {v0, p1, p0, v2, v1}, Landroid/net/NetworkProvider;->registerNetworkOffer(Landroid/net/NetworkScore;Landroid/net/NetworkCapabilities;Ljava/util/concurrent/Executor;Landroid/net/NetworkProvider$NetworkOfferCallback;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Landroid/net/NetworkCapabilities;

    .line 36
    .line 37
    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iput-object p1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    .line 47
    .line 48
    invoke-virtual {v3}, Landroid/net/NetworkFactory;->reevaluateAllRequests()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p1, Landroid/net/NetworkScore;

    .line 55
    .line 56
    iget-object v0, p0, Landroid/net/NetworkFactoryImpl;->mScore:Landroid/net/NetworkScore;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iput-object p1, p0, Landroid/net/NetworkFactoryImpl;->mScore:Landroid/net/NetworkScore;

    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/net/NetworkFactory;->reevaluateAllRequests()V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Landroid/net/NetworkRequest;

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Landroid/net/NetworkFactoryImpl;->handleRemoveRequest(Landroid/net/NetworkRequest;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p1, Landroid/net/NetworkRequest;

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Landroid/net/NetworkFactoryImpl;->handleAddRequest(Landroid/net/NetworkRequest;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final handleRemoveRequest(Landroid/net/NetworkRequest;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/NetworkFactoryImpl;->mNetworkRequests:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroid/net/NetworkFactoryImpl;->mNetworkRequests:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-boolean p1, v0, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;->requested:Z

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mParent:Landroid/net/NetworkFactory;

    .line 23
    .line 24
    iget-object p1, v0, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/net/NetworkFactory;->releaseNetworkFor(Landroid/net/NetworkRequest;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final reevaluateAllRequests()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkFactoryImpl;->mScore:Landroid/net/NetworkScore;

    .line 7
    .line 8
    iget-object v2, p0, Landroid/net/NetworkFactoryLegacyImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    .line 9
    .line 10
    iget-object v3, p0, Landroid/net/NetworkFactoryImpl;->mExecutor:Landroid/net/NetworkFactoryImpl$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    iget-object p0, p0, Landroid/net/NetworkFactoryImpl;->mRequestCallback:Landroid/net/NetworkFactoryImpl$1;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/net/NetworkProvider;->registerNetworkOffer(Landroid/net/NetworkScore;Landroid/net/NetworkCapabilities;Ljava/util/concurrent/Executor;Landroid/net/NetworkProvider$NetworkOfferCallback;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final register(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/net/NetworkFactoryImpl;->register(Ljava/lang/String;Z)V

    return-void
.end method

.method public final register(Ljava/lang/String;Z)V
    .locals 3

    .line 2
    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mParent:Landroid/net/NetworkFactory;

    const-string v1, "Registering NetworkFactory"

    invoke-virtual {v0, v1}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/net/NetworkFactoryImpl$2;

    iget-object v1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/net/NetworkFactoryImpl$2;-><init>(Landroid/net/NetworkFactoryImpl;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    .line 5
    iget-object p1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    .line 6
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->registerNetworkProvider(Landroid/net/NetworkProvider;)I

    if-eqz p2, :cond_0

    const/4 p1, 0x6

    .line 7
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "A NetworkFactory must only be registered once"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final registerIgnoringScore(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/net/NetworkFactoryImpl;->register(Ljava/lang/String;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final setCapabilityFilter(Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/NetworkCapabilities;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x4

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setScoreFilter(I)V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/NetworkScore$Builder;

    invoke-direct {v0}, Landroid/net/NetworkScore$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/NetworkScore$Builder;->setLegacyInt(I)Landroid/net/NetworkScore$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/NetworkFactoryImpl;->setScoreFilter(Landroid/net/NetworkScore;)V

    return-void
.end method

.method public final setScoreFilter(Landroid/net/NetworkScore;)V
    .locals 1

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "providerId="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/net/NetworkProvider;->getProviderId()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string/jumbo v1, "null"

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", ScoreFilter="

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Landroid/net/NetworkFactoryImpl;->mScore:Landroid/net/NetworkScore;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ", Filter="

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ", requests="

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Landroid/net/NetworkFactoryImpl;->mNetworkRequests:Ljava/util/Map;

    .line 54
    .line 55
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method
