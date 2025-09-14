.class public final Lcom/android/server/display/color/ColorDisplayService$1;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;

.field public final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$1;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 3
    iput-object p3, p0, Lcom/android/server/display/color/ColorDisplayService$1;->val$cr:Landroid/content/ContentResolver;

    .line 5
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 8
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$1;->val$cr:Landroid/content/ContentResolver;

    .line 3
    iget-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$1;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 5
    iget p2, p2, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 7
    const-string/jumbo v0, "user_setup_complete"

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {p1, v0, v1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 14
    move-result p1

    .line 15
    const/4 p2, 0x1

    .line 16
    if-ne p1, p2, :cond_0

    .line 18
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$1;->val$cr:Landroid/content/ContentResolver;

    .line 20
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 23
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$1;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 25
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 28
    iget-boolean p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mBootCompleted:Z

    .line 30
    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->setUp()V

    .line 35
    :cond_0
    return-void
.end method
