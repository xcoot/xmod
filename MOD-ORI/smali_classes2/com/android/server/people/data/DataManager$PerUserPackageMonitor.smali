.class public final Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method public constructor <init>(Lcom/android/server/people/data/DataManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;->this$0:Lcom/android/server/people/data/DataManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;->this$0:Lcom/android/server/people/data/DataManager;

    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/UserData;->deletePackageData(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
