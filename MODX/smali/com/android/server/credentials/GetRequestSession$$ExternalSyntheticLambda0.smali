.class public final synthetic Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/credentials/GetRequestSession;

.field public final synthetic f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/credentials/GetRequestSession;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/credentials/GetRequestSession;

    .line 6
    iput-object p2, p0, Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/credentials/GetRequestSession;

    .line 3
    iget-object p0, p0, Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 7
    iget-object v0, v0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 9
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/android/server/credentials/ProviderGetSession;

    .line 17
    iget-object v0, p1, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    .line 19
    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 25
    iget-object p0, p1, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    .line 27
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->updatePreviousMostRecentAuthEntry()V

    .line 30
    :cond_0
    return-void
.end method
