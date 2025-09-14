.class public final synthetic Lcom/android/server/wm/MultiWindowSupportPolicyController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiWindowSupportPolicyController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiWindowSupportPolicyController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->isIgnoreDevSettingForNonResizable(Landroid/content/pm/ActivityInfo;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mIgnoreDevSettingForNonResizable:Z

    .line 15
    .line 16
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 17
    .line 18
    iget v1, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->checkSupportPolicyLocked(ILjava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    iput p0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 27
    .line 28
    return-void
.end method
