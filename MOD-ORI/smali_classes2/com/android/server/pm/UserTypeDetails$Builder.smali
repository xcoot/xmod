.class public final Lcom/android/server/pm/UserTypeDetails$Builder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAccessibilityString:I

.field public mBadgeColors:[I

.field public mBadgeLabels:[I

.field public mBadgeNoBackground:I

.field public mBadgePlain:I

.field public mBaseType:I

.field public mDarkThemeBadgeColors:[I

.field public mDefaultCrossProfileIntentFilters:Ljava/util/List;

.field public mDefaultRestrictions:Landroid/os/Bundle;

.field public mDefaultSecureSettings:Landroid/os/Bundle;

.field public mDefaultUserInfoPropertyFlags:I

.field public mDefaultUserProperties:Landroid/content/pm/UserProperties;

.field public mEnabled:I

.field public mIconBadge:I

.field public mLabels:[I

.field public mMaxAllowed:I

.field public mMaxAllowedPerParent:I

.field public mName:Ljava/lang/String;

.field public mStatusBarIcon:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowedPerParent:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    .line 14
    .line 15
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSecureSettings:Landroid/os/Bundle;

    .line 16
    .line 17
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    iput v2, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mEnabled:I

    .line 21
    .line 22
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabels:[I

    .line 23
    .line 24
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDarkThemeBadgeColors:[I

    .line 29
    .line 30
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    .line 31
    .line 32
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgePlain:I

    .line 33
    .line 34
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeNoBackground:I

    .line 35
    .line 36
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mStatusBarIcon:I

    .line 37
    .line 38
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mAccessibilityString:I

    .line 39
    .line 40
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    .line 41
    .line 42
    return-void
.end method
