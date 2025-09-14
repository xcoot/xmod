.class public final Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mExpectedRemoteEntryProviderService:Landroid/content/ComponentName;

.field public final mUiCreateEntries:Ljava/util/Map;

.field public mUiRemoteEntry:Landroid/util/Pair;

.field public final synthetic this$0:Lcom/android/server/credentials/ProviderCreateSession;


# direct methods
.method public constructor <init>(Lcom/android/server/credentials/ProviderCreateSession;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->this$0:Lcom/android/server/credentials/ProviderCreateSession;

    .line 5
    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiCreateEntries:Ljava/util/Map;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mExpectedRemoteEntryProviderService:Landroid/content/ComponentName;

    .line 17
    .line 18
    return-void
.end method
