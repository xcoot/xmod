.class public Landroid/net/NetworkFactoryLegacyImpl;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/NetworkFactoryShim;


# instance fields
.field public mCapabilityFilter:Landroid/net/NetworkCapabilities;

.field public final mContext:Landroid/content/Context;

.field public final mNetworkRequests:Ljava/util/Map;

.field public final mParent:Landroid/net/NetworkFactory;

.field public mProvider:Landroid/net/NetworkProvider;

.field public mScore:I


# direct methods
.method public constructor <init>(Landroid/net/NetworkFactory;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Landroid/net/NetworkFactoryLegacyImpl;->mNetworkRequests:Ljava/util/Map;

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    iput-object p2, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    .line 13
    .line 14
    iput-object p1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mParent:Landroid/net/NetworkFactory;

    .line 15
    .line 16
    iput-object p3, p0, Landroid/net/NetworkFactoryLegacyImpl;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    iput-object p4, p0, Landroid/net/NetworkFactoryLegacyImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/net/NetworkFactoryLegacyImpl;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mNetworkRequests:Ljava/util/Map;

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
    check-cast v0, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;

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

.method public final evalRequest(Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->requested:Z

    .line 2
    .line 3
    iget-object v1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mParent:Landroid/net/NetworkFactory;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget v0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->score:I

    .line 8
    .line 9
    iget v2, p0, Landroid/net/NetworkFactoryLegacyImpl;->mScore:I

    .line 10
    .line 11
    if-lt v0, v2, :cond_0

    .line 12
    .line 13
    iget v0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->providerId:I

    .line 14
    .line 15
    iget-object v2, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/net/NetworkProvider;->getProviderId()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ne v0, v2, :cond_1

    .line 22
    .line 23
    :cond_0
    iget-object v0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 24
    .line 25
    iget-object v2, p0, Landroid/net/NetworkFactoryLegacyImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/net/NetworkFactory;->acceptRequest(Landroid/net/NetworkRequest;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object p0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 42
    .line 43
    invoke-virtual {v1, p0}, Landroid/net/NetworkFactory;->needNetworkFor(Landroid/net/NetworkRequest;)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    iput-boolean p0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->requested:Z

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-boolean v0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->requested:Z

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    iget v0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->score:I

    .line 55
    .line 56
    iget v2, p0, Landroid/net/NetworkFactoryLegacyImpl;->mScore:I

    .line 57
    .line 58
    if-le v0, v2, :cond_2

    .line 59
    .line 60
    iget v0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->providerId:I

    .line 61
    .line 62
    iget-object v2, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/net/NetworkProvider;->getProviderId()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-ne v0, v2, :cond_3

    .line 69
    .line 70
    :cond_2
    iget-object v0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 71
    .line 72
    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    .line 73
    .line 74
    invoke-virtual {v0, p0}, Landroid/net/NetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_3

    .line 79
    .line 80
    iget-object p0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 81
    .line 82
    invoke-virtual {v1, p0}, Landroid/net/NetworkFactory;->acceptRequest(Landroid/net/NetworkRequest;)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-nez p0, :cond_4

    .line 87
    .line 88
    :cond_3
    iget-object p0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 89
    .line 90
    invoke-virtual {v1, p0}, Landroid/net/NetworkFactory;->releaseNetworkFor(Landroid/net/NetworkRequest;)V

    .line 91
    .line 92
    .line 93
    const/4 p0, 0x0

    .line 94
    iput-boolean p0, p1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->requested:Z

    .line 95
    .line 96
    :cond_4
    :goto_0
    return-void
.end method

.method public final evalRequests()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mNetworkRequests:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroid/net/NetworkFactoryLegacyImpl;->evalRequest(Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public getRequestCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mNetworkRequests:Ljava/util/Map;

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

.method public handleAddRequest(Landroid/net/NetworkRequest;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mNetworkRequests:Ljava/util/Map;

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
    check-cast v0, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v1, "got request "

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " with score "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, " and providerId "

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mParent:Landroid/net/NetworkFactory;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;

    .line 50
    .line 51
    invoke-direct {v0, p1, p2, p3}, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;-><init>(Landroid/net/NetworkRequest;II)V

    .line 52
    .line 53
    .line 54
    iget-object p2, p0, Landroid/net/NetworkFactoryLegacyImpl;->mNetworkRequests:Ljava/util/Map;

    .line 55
    .line 56
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iput p2, v0, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->score:I

    .line 61
    .line 62
    iput p3, v0, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->providerId:I

    .line 63
    .line 64
    :goto_0
    invoke-virtual {p0, v0}, Landroid/net/NetworkFactoryLegacyImpl;->evalRequest(Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_3

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Landroid/net/NetworkCapabilities;

    .line 19
    .line 20
    iput-object p1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/net/NetworkFactoryLegacyImpl;->evalRequests()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 27
    .line 28
    iput p1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mScore:I

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/net/NetworkFactoryLegacyImpl;->evalRequests()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Landroid/net/NetworkRequest;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/net/NetworkFactoryLegacyImpl;->handleRemoveRequest$1(Landroid/net/NetworkRequest;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Landroid/net/NetworkRequest;

    .line 45
    .line 46
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 47
    .line 48
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 49
    .line 50
    invoke-virtual {p0, v0, v1, p1}, Landroid/net/NetworkFactoryLegacyImpl;->handleAddRequest(Landroid/net/NetworkRequest;II)V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method public final handleRemoveRequest$1(Landroid/net/NetworkRequest;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mNetworkRequests:Ljava/util/Map;

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
    check-cast v0, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mNetworkRequests:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-boolean p1, v0, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->requested:Z

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mParent:Landroid/net/NetworkFactory;

    .line 23
    .line 24
    iget-object p1, v0, Landroid/net/NetworkFactoryLegacyImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/net/NetworkFactory;->releaseNetworkFor(Landroid/net/NetworkRequest;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public reevaluateAllRequests()V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/net/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda1;-><init>(Landroid/net/NetworkFactoryLegacyImpl;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public register(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mParent:Landroid/net/NetworkFactory;

    .line 6
    .line 7
    const-string v1, "Registering NetworkFactory"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroid/net/NetworkFactoryLegacyImpl$1;

    .line 13
    .line 14
    iget-object v1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v0, p0, v1, v2, p1}, Landroid/net/NetworkFactoryLegacyImpl$1;-><init>(Landroid/net/NetworkFactoryLegacyImpl;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    .line 24
    .line 25
    iget-object p1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const-string/jumbo v0, "connectivity"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 35
    .line 36
    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Landroid/net/ConnectivityManager;->registerNetworkProvider(Landroid/net/NetworkProvider;)I

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p1, "A NetworkFactory must only be registered once"

    .line 45
    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public setCapabilityFilter(Landroid/net/NetworkCapabilities;)V
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

.method public setScoreFilter(I)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setScoreFilter(Landroid/net/NetworkScore;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Landroid/net/NetworkScore;->getLegacyInt()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/net/NetworkFactoryLegacyImpl;->setScoreFilter(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
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
    iget v1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mScore:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mNetworkRequests:Ljava/util/Map;

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
