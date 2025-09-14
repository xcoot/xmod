.class public final synthetic Lcom/android/server/credentials/ProviderGetSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/service/credentials/BeginGetCredentialRequest$Builder;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Landroid/service/credentials/BeginGetCredentialRequest$Builder;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/credentials/ProviderGetSession$$ExternalSyntheticLambda0;->f$0:Landroid/service/credentials/BeginGetCredentialRequest$Builder;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/credentials/ProviderGetSession$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/ProviderGetSession$$ExternalSyntheticLambda0;->f$0:Landroid/service/credentials/BeginGetCredentialRequest$Builder;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    .line 4
    .line 5
    check-cast p1, Landroid/credentials/CredentialOption;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/credentials/ProviderSession;->generateUniqueId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Landroid/service/credentials/BeginGetCredentialOption;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/credentials/CredentialOption;->getType()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p1}, Landroid/credentials/CredentialOption;->getCandidateQueryData()Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-direct {v2, v1, v3, v4}, Landroid/service/credentials/BeginGetCredentialOption;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/service/credentials/BeginGetCredentialRequest$Builder;->addBeginGetCredentialOption(Landroid/service/credentials/BeginGetCredentialOption;)Landroid/service/credentials/BeginGetCredentialRequest$Builder;

    .line 25
    .line 26
    .line 27
    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    return-void
.end method
