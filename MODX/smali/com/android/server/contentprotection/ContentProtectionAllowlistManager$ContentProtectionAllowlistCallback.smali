.class public final Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;
.super Landroid/service/contentcapture/IContentProtectionAllowlistCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;


# direct methods
.method public constructor <init>(Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;->this$0:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    .line 3
    invoke-direct {p0}, Landroid/service/contentcapture/IContentProtectionAllowlistCallback$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final setAllowlist(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;->this$0:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    .line 3
    iget-object v0, v0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback$$ExternalSyntheticLambda0;

    .line 7
    invoke-direct {v1, p0, p1}, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;Ljava/util/List;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
.end method
