.class public final synthetic Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda22;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda22;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda22;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda22;->f$0:Ljava/lang/Object;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 10
    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 12
    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 14
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 16
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    .line 19
    move-result p0

    .line 20
    const/16 v0, 0x64

    .line 22
    if-gt p0, v0, :cond_0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget p0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mScanningState:I

    .line 27
    const/4 p1, 0x2

    .line 28
    if-ne p0, p1, :cond_1

    .line 30
    :goto_0
    const/4 p0, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    :goto_1
    return p0

    .line 34
    :pswitch_0
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 36
    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 38
    iget v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mScanningState:I

    .line 40
    const/4 v1, 0x1

    .line 41
    if-ne v0, v1, :cond_2

    .line 43
    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mOwnerPackageName:Ljava/lang/String;

    .line 45
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 47
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    .line 50
    move-result p0

    .line 51
    const/16 v0, 0x64

    .line 53
    if-gt p0, v0, :cond_2

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    iget p0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mScanningState:I

    .line 58
    const/4 p1, 0x2

    .line 59
    if-ne p0, p1, :cond_3

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    const/4 v1, 0x0

    .line 63
    :goto_2
    return v1

    .line 64
    :pswitch_1
    check-cast p0, Ljava/lang/String;

    .line 66
    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 68
    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mOwnerPackageName:Ljava/lang/String;

    .line 70
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 73
    move-result p0

    .line 74
    return p0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
