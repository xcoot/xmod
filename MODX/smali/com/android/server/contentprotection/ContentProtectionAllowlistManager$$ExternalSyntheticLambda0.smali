.class public final synthetic Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->handlePackagesChanged()V

    .line 6
    iget-object v0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 8
    iget-object v1, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mContentCaptureManagerService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 10
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 16
    iget-object p0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mHandler:Landroid/os/Handler;

    .line 18
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 21
    return-void
.end method
