.class final Lcom/android/server/translation/RemoteTranslationService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mIdleUnbindTimeoutMs:J

.field private final mRemoteCallback:Landroid/os/IBinder;

.field private final mRequestTimeoutMs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/translation/RemoteTranslationService;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/os/IBinder;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.service.translation.TranslationService"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    new-instance v7, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    move-object v2, p0

    .line 19
    move-object v3, p1

    .line 20
    move v6, p3

    .line 21
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 22
    .line 23
    .line 24
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    iput-wide v0, p0, Lcom/android/server/translation/RemoteTranslationService;->mIdleUnbindTimeoutMs:J

    .line 27
    .line 28
    const/16 p1, 0x1388

    .line 29
    .line 30
    iput p1, p0, Lcom/android/server/translation/RemoteTranslationService;->mRequestTimeoutMs:I

    .line 31
    .line 32
    iput-object p2, p0, Lcom/android/server/translation/RemoteTranslationService;->mComponentName:Landroid/content/ComponentName;

    .line 33
    .line 34
    iput-object p4, p0, Lcom/android/server/translation/RemoteTranslationService;->mRemoteCallback:Landroid/os/IBinder;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/translation/RemoteTranslationService;->mIdleUnbindTimeoutMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 1

    .line 1
    check-cast p1, Landroid/service/translation/ITranslationService;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/translation/RemoteTranslationService;->mRemoteCallback:Landroid/os/IBinder;

    .line 6
    .line 7
    invoke-interface {p1, p0}, Landroid/service/translation/ITranslationService;->onConnected(Landroid/os/IBinder;)V

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :catch_0
    move-exception p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p1}, Landroid/service/translation/ITranslationService;->onDisconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "Exception calling onServiceConnectionStatusChanged("

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p2, "): "

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string p2, "RemoteTranslationService"

    .line 37
    .line 38
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    :goto_1
    return-void
.end method
