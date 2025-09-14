.class public final synthetic Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    .line 2
    .line 3
    check-cast p1, Landroid/service/credentials/CreateEntry;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/credentials/ProviderSession;->generateUniqueId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Landroid/credentials/selection/Entry;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/service/credentials/CreateEntry;->getSlice()Landroid/app/slice/Slice;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v3, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->this$0:Lcom/android/server/credentials/ProviderCreateSession;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v4, Landroid/content/Intent;

    .line 24
    .line 25
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v5, "android.service.credentials.extra.CREATE_CREDENTIAL_REQUEST"

    .line 29
    .line 30
    iget-object v3, v3, Lcom/android/server/credentials/ProviderCreateSession;->mCompleteRequest:Landroid/service/credentials/CreateCredentialRequest;

    .line 31
    .line 32
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    const-string/jumbo v3, "save_entry_key"

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v3, v0, v2, v4}, Landroid/credentials/selection/Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/slice/Slice;Landroid/content/Intent;)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiCreateEntries:Ljava/util/Map;

    .line 42
    .line 43
    new-instance v2, Landroid/util/Pair;

    .line 44
    .line 45
    invoke-direct {v2, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    check-cast p0, Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    return-void
.end method
