.class public final synthetic Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/credentials/CredentialManagerService;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/credentials/CredentialManagerService;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    check-cast p1, Landroid/credentials/CredentialProviderInfo;

    .line 8
    .line 9
    new-instance v2, Lcom/android/server/credentials/CredentialManagerServiceImpl;

    .line 10
    .line 11
    iget-object v3, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v2, v0, v3, p0}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v0, "CredentialManagerServiceImpl constructed for: "

    .line 19
    .line 20
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string v0, "CredentialManager"

    .line 43
    .line 44
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    iput-object p1, v2, Lcom/android/server/credentials/CredentialManagerServiceImpl;->mInfo:Landroid/credentials/CredentialProviderInfo;

    .line 48
    .line 49
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    return-void
.end method
