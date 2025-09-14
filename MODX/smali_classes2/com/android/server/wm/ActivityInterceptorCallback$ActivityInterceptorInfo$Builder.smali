.class public final Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityInfo:Landroid/content/pm/ActivityInfo;

.field public mCallingFeatureId:Ljava/lang/String;

.field public mCallingPackage:Ljava/lang/String;

.field public final mCallingPid:I

.field public final mCallingUid:I

.field public mCheckedOptions:Landroid/app/ActivityOptions;

.field public mClearOptionsAnimation:Ljava/lang/Runnable;

.field public final mIntent:Landroid/content/Intent;

.field public final mRealCallingPid:I

.field public final mRealCallingUid:I

.field public final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field public mResolvedType:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public constructor <init>(IIIIILandroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingPackage:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingFeatureId:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCheckedOptions:Landroid/app/ActivityOptions;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mClearOptionsAnimation:Ljava/lang/Runnable;

    .line 12
    .line 13
    iput p1, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingUid:I

    .line 14
    .line 15
    iput p2, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingPid:I

    .line 16
    .line 17
    iput p3, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mRealCallingUid:I

    .line 18
    .line 19
    iput p4, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mRealCallingPid:I

    .line 20
    .line 21
    iput p5, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mUserId:I

    .line 22
    .line 23
    iput-object p6, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mIntent:Landroid/content/Intent;

    .line 24
    .line 25
    iput-object p7, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 26
    .line 27
    iput-object p8, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;-><init>(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingFeatureId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingPackage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCheckedOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCheckedOptions:Landroid/app/ActivityOptions;

    .line 2
    .line 3
    return-object p0
.end method

.method public setClearOptionsAnimationRunnable(Ljava/lang/Runnable;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mClearOptionsAnimation:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mResolvedType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
