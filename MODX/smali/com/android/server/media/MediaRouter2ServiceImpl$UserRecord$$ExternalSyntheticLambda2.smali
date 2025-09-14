.class public final synthetic Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

.field public final synthetic f$1:Ljava/io/PrintWriter;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 6
    iput-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticLambda2;->f$1:Ljava/io/PrintWriter;

    .line 8
    iput-object p3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 3
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticLambda2;->f$1:Ljava/io/PrintWriter;

    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    .line 7
    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v3, "UserHandler"

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v3, "  "

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    const-string/jumbo v4, "mRunning="

    .line 52
    invoke-static {v2, v4}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    move-result-object v2

    .line 56
    iget-boolean v4, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRunning:Z

    .line 58
    invoke-static {v2, v4, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 61
    iget-object v2, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 63
    invoke-virtual {v2, v1, p0}, Lcom/android/server/media/MediaRoute2Provider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 66
    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mWatcher:Lcom/android/server/media/MediaRoute2ProviderWatcher;

    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v4, "MediaRoute2ProviderWatcher"

    .line 81
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 106
    iget-object v2, v0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    .line 108
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_0

    .line 114
    const-string v0, "<no provider service proxies>"

    .line 116
    invoke-static {v1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    goto :goto_1

    .line 120
    :cond_0
    iget-object v0, v0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    move-result-object v0

    .line 126
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_1

    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    move-result-object v2

    .line 136
    check-cast v2, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 138
    invoke-virtual {v2, v1, p0}, Lcom/android/server/media/MediaRoute2Provider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 141
    goto :goto_0

    .line 142
    :cond_1
    :goto_1
    return-void
.end method
