.class public final Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallingUid:I

.field public mNumLocales:I

.field public mOverrideRemoved:Z

.field public mSameAsPrevConfig:Z

.field public mSameAsResConfig:Z

.field public mStatus:I

.field public mTargetUid:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mTargetUid:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mNumLocales:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mOverrideRemoved:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mSameAsResConfig:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mSameAsPrevConfig:Z

    .line 15
    .line 16
    iput v0, p0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mStatus:I

    .line 17
    .line 18
    iput p1, p0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mCallingUid:I

    .line 19
    .line 20
    return-void
.end method
