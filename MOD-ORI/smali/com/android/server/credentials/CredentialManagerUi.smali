.class public final Lcom/android/server/credentials/CredentialManagerUi;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallbacks:Lcom/android/server/credentials/RequestSession;

.field public final mContext:Landroid/content/Context;

.field public final mEnabledProviders:Ljava/util/Set;

.field public final mResultReceiver:Lcom/android/server/credentials/CredentialManagerUi$1;

.field public mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/server/credentials/RequestSession;Ljava/util/Set;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/credentials/CredentialManagerUi$1;

    .line 5
    .line 6
    new-instance v1, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Lcom/android/server/credentials/CredentialManagerUi$1;-><init>(Lcom/android/server/credentials/CredentialManagerUi;Landroid/os/Handler;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mResultReceiver:Lcom/android/server/credentials/CredentialManagerUi$1;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    iput p2, p0, Lcom/android/server/credentials/CredentialManagerUi;->mUserId:I

    .line 23
    .line 24
    iput-object p3, p0, Lcom/android/server/credentials/CredentialManagerUi;->mCallbacks:Lcom/android/server/credentials/RequestSession;

    .line 25
    .line 26
    iput-object p4, p0, Lcom/android/server/credentials/CredentialManagerUi;->mEnabledProviders:Ljava/util/Set;

    .line 27
    .line 28
    sget-object p1, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->IN_PROGRESS:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final createPendingIntent(Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Lcom/android/server/credentials/metrics/RequestSessionMetric;)Landroid/app/PendingIntent;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/credentials/CredentialManagerUi;->mEnabledProviders:Ljava/util/Set;

    .line 4
    .line 5
    new-instance v2, Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    iget v4, p0, Lcom/android/server/credentials/CredentialManagerUi;->mUserId:I

    .line 12
    .line 13
    invoke-static {v0, v4, v3, v1, v2}, Landroid/service/credentials/CredentialProviderInfoFactory;->getCredentialProviderServices(Landroid/content/Context;IILjava/util/Set;Ljava/util/Set;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lcom/android/server/credentials/CredentialManagerUi$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lcom/android/server/credentials/CredentialManagerUi$$ExternalSyntheticLambda1;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    new-instance v2, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mResultReceiver:Lcom/android/server/credentials/CredentialManagerUi$1;

    .line 51
    .line 52
    invoke-static {v1, p1, p2, v2, v0}, Landroid/credentials/selection/IntentFactory;->createCredentialSelectorIntentForCredMan(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/ResultReceiver;)Landroid/credentials/selection/IntentCreationResult;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object p2, p0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {p3, p2, p1, v4}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectUiConfigurationResults(Landroid/content/Context;Landroid/credentials/selection/IntentCreationResult;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/credentials/selection/IntentCreationResult;->getIntent()Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v7, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    iget-object v5, p0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    const/4 v6, 0x0

    .line 83
    const/high16 v8, 0x2000000

    .line 84
    .line 85
    const/4 v9, 0x0

    .line 86
    invoke-static/range {v5 .. v10}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0
.end method
