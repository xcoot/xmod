.class public Landroid/net/NetworkFactory;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CMD_CANCEL_REQUEST:I = 0x2

.field public static final CMD_REQUEST_NETWORK:I = 0x1

.field static final DBG:Z = true

.field static final VDBG:Z = false


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field final mImpl:Landroid/net/NetworkFactoryShim;

.field private mRefCount:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    .line 6
    .line 7
    iput-object p3, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    new-instance p3, Landroid/net/NetworkFactoryImpl;

    .line 16
    .line 17
    invoke-direct {p3, p0, p1, p2, p4}, Landroid/net/NetworkFactoryImpl;-><init>(Landroid/net/NetworkFactory;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;)V

    .line 18
    .line 19
    .line 20
    iput-object p3, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p3, Landroid/net/NetworkFactoryLegacyImpl;

    .line 24
    .line 25
    invoke-direct {p3, p0, p1, p2, p4}, Landroid/net/NetworkFactoryLegacyImpl;-><init>(Landroid/net/NetworkFactory;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;)V

    .line 26
    .line 27
    .line 28
    iput-object p3, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    .line 29
    .line 30
    :goto_0
    return-void
.end method


# virtual methods
.method public acceptRequest(Landroid/net/NetworkRequest;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    .line 2
    .line 3
    invoke-interface {p0, p2}, Landroid/net/NetworkFactoryShim;->dump(Ljava/io/PrintWriter;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/net/NetworkFactoryShim;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getProvider()Landroid/net/NetworkProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    .line 2
    .line 3
    check-cast p0, Landroid/net/NetworkFactoryLegacyImpl;

    .line 4
    .line 5
    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    .line 6
    .line 7
    return-object p0
.end method

.method public getRequestCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/net/NetworkFactoryShim;->getRequestCount()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getSerialNumber()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    .line 2
    .line 3
    check-cast p0, Landroid/net/NetworkFactoryLegacyImpl;

    .line 4
    .line 5
    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/net/NetworkProvider;->getProviderId()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public log(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public needNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 1

    .line 1
    iget p1, p0, Landroid/net/NetworkFactory;->mRefCount:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    add-int/2addr p1, v0

    .line 5
    iput p1, p0, Landroid/net/NetworkFactory;->mRefCount:I

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/net/NetworkFactory;->startNetwork()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/net/NetworkFactoryShim;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final reevaluateAllRequests()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/net/NetworkFactoryShim;->reevaluateAllRequests()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public register()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, p0}, Landroid/net/NetworkFactoryShim;->register(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public registerIgnoringScore()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, p0}, Landroid/net/NetworkFactoryShim;->registerIgnoringScore(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 0

    .line 1
    iget p1, p0, Landroid/net/NetworkFactory;->mRefCount:I

    .line 2
    .line 3
    add-int/lit8 p1, p1, -0x1

    .line 4
    .line 5
    iput p1, p0, Landroid/net/NetworkFactory;->mRefCount:I

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/net/NetworkFactory;->stopNetwork()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public releaseRequestAsUnfulfillableByAnyFactory(Landroid/net/NetworkRequest;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    .line 2
    .line 3
    check-cast p0, Landroid/net/NetworkFactoryLegacyImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/net/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Landroid/net/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda0;-><init>(Landroid/net/NetworkFactoryLegacyImpl;Landroid/net/NetworkRequest;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setCapabilityFilter(Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/net/NetworkFactoryShim;->setCapabilityFilter(Landroid/net/NetworkCapabilities;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setScoreFilter(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    invoke-interface {p0, p1}, Landroid/net/NetworkFactoryShim;->setScoreFilter(I)V

    return-void
.end method

.method public setScoreFilter(Landroid/net/NetworkScore;)V
    .locals 0

    .line 2
    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    invoke-interface {p0, p1}, Landroid/net/NetworkFactoryShim;->setScoreFilter(Landroid/net/NetworkScore;)V

    return-void
.end method

.method public startNetwork()V
    .locals 0

    .line 1
    return-void
.end method

.method public stopNetwork()V
    .locals 0

    .line 1
    return-void
.end method

.method public terminate()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    .line 2
    .line 3
    check-cast p0, Landroid/net/NetworkFactoryLegacyImpl;

    .line 4
    .line 5
    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mParent:Landroid/net/NetworkFactory;

    .line 10
    .line 11
    const-string v1, "Unregistering NetworkFactory"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-string/jumbo v1, "connectivity"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 26
    .line 27
    iget-object v1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkProvider(Landroid/net/NetworkProvider;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string v0, "This NetworkFactory was never registered"

    .line 40
    .line 41
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "{"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Landroid/net/NetworkFactory;->mImpl:Landroid/net/NetworkFactoryShim;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string/jumbo p0, "}"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method
