.class public final synthetic Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/PackageWatchdog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/PackageWatchdog;

    .line 6
    return-void
.end method


# virtual methods
.method public final onNetworkStackFailure(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/PackageWatchdog;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog;->getVersionedPackage(Ljava/lang/String;)Landroid/content/pm/VersionedPackage;

    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 9
    const-string p0, "PackageWatchdog"

    .line 11
    const-string p1, "NetworkStack failed but could not find its package"

    .line 13
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 20
    move-result-object p1

    .line 21
    const/4 v0, 0x2

    .line 22
    invoke-virtual {p0, v0, p1}, Lcom/android/server/PackageWatchdog;->onPackageFailure(ILjava/util/List;)V

    .line 25
    :goto_0
    return-void
.end method
