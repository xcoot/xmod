.class public final synthetic Lcom/android/server/wm/DisplayArea$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/DisplayArea$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget p0, p0, Lcom/android/server/wm/DisplayArea$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/wm/Task;

    .line 7
    .line 8
    iget-boolean p0, p1, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 9
    .line 10
    xor-int/lit8 p0, p0, 0x1

    .line 11
    .line 12
    return p0

    .line 13
    :pswitch_0
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 14
    .line 15
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatOrientationOverrides:Lcom/android/server/wm/AppCompatOrientationOverrides;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const/4 v0, 0x1

    .line 44
    if-ne p1, v0, :cond_0

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatOrientationOverrides:Lcom/android/server/wm/AppCompatOrientationOverrides;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 55
    .line 56
    const-wide/32 v1, 0xe1566d4

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
