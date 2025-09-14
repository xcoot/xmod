.class public final Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field public final mActivityInfo:Landroid/content/pm/ActivityInfo;

.field public final mCallingFeatureId:Ljava/lang/String;

.field public final mCallingPackage:Ljava/lang/String;

.field public final mCallingPid:I

.field public final mCallingUid:I

.field public final mCheckedOptions:Landroid/app/ActivityOptions;

.field public final mClearOptionsAnimation:Ljava/lang/Runnable;

.field public final mIntent:Landroid/content/Intent;

.field public final mRealCallingPid:I

.field public final mRealCallingUid:I

.field public final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field public final mResolvedType:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingUid:I

    .line 5
    .line 6
    iput v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCallingUid:I

    .line 7
    .line 8
    iget v0, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingPid:I

    .line 9
    .line 10
    iput v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCallingPid:I

    .line 11
    .line 12
    iget v0, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mRealCallingUid:I

    .line 13
    .line 14
    iput v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mRealCallingUid:I

    .line 15
    .line 16
    iget v0, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mRealCallingPid:I

    .line 17
    .line 18
    iput v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mRealCallingPid:I

    .line 19
    .line 20
    iget v0, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mUserId:I

    .line 21
    .line 22
    iput v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mUserId:I

    .line 23
    .line 24
    iget-object v0, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mIntent:Landroid/content/Intent;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mIntent:Landroid/content/Intent;

    .line 27
    .line 28
    iget-object v0, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 31
    .line 32
    iget-object v0, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 35
    .line 36
    iget-object v0, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mResolvedType:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mResolvedType:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v0, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingPackage:Ljava/lang/String;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCallingPackage:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v0, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingFeatureId:Ljava/lang/String;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCallingFeatureId:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v0, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCheckedOptions:Landroid/app/ActivityOptions;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCheckedOptions:Landroid/app/ActivityOptions;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mClearOptionsAnimation:Ljava/lang/Runnable;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mClearOptionsAnimation:Ljava/lang/Runnable;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCallingFeatureId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCallingFeatureId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCallingPackage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCallingPid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCallingPid:I

    .line 2
    .line 3
    return p0
.end method

.method public getCallingUid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCallingUid:I

    .line 2
    .line 3
    return p0
.end method

.method public getCheckedOptions()Landroid/app/ActivityOptions;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCheckedOptions:Landroid/app/ActivityOptions;

    .line 2
    .line 3
    return-object p0
.end method

.method public getClearOptionsAnimationRunnable()Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mClearOptionsAnimation:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mIntent:Landroid/content/Intent;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRealCallingPid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mRealCallingPid:I

    .line 2
    .line 3
    return p0
.end method

.method public getRealCallingUid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mRealCallingUid:I

    .line 2
    .line 3
    return p0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public getResolvedType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mResolvedType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getUserId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mUserId:I

    .line 2
    .line 3
    return p0
.end method
