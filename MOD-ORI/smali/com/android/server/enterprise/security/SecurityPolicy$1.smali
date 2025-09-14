.class public final Lcom/android/server/enterprise/security/SecurityPolicy$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBlocked()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const v0, 0x1040468

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method
