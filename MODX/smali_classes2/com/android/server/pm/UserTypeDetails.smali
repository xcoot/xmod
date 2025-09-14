.class public final Lcom/android/server/pm/UserTypeDetails;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAccessibilityString:I

.field public final mBadgeColors:[I

.field public final mBadgeLabels:[I

.field public final mBadgeNoBackground:I

.field public final mBadgePlain:I

.field public final mBaseType:I

.field public final mDarkThemeBadgeColors:[I

.field public final mDefaultCrossProfileIntentFilters:Ljava/util/List;

.field public final mDefaultRestrictions:Landroid/os/Bundle;

.field public final mDefaultSecureSettings:Landroid/os/Bundle;

.field public final mDefaultUserInfoPropertyFlags:I

.field public final mDefaultUserProperties:Landroid/content/pm/UserProperties;

.field public final mEnabled:Z

.field public final mIconBadge:I

.field public final mLabels:[I

.field public final mMaxAllowed:I

.field public final mMaxAllowedPerParent:I

.field public final mName:Ljava/lang/String;

.field public final mStatusBarIcon:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZIII[IIIIII[I[I[ILandroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;ILandroid/content/pm/UserProperties;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    move v1, p2

    .line 3
    iput-boolean v1, v0, Lcom/android/server/pm/UserTypeDetails;->mEnabled:Z

    move v1, p3

    .line 4
    iput v1, v0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowed:I

    move v1, p7

    .line 5
    iput v1, v0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowedPerParent:I

    move v1, p4

    .line 6
    iput v1, v0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    move v1, p5

    .line 7
    iput v1, v0, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserInfoPropertyFlags:I

    move-object/from16 v1, p15

    .line 8
    iput-object v1, v0, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    move-object/from16 v1, p16

    .line 9
    iput-object v1, v0, Lcom/android/server/pm/UserTypeDetails;->mDefaultSecureSettings:Landroid/os/Bundle;

    move-object/from16 v1, p17

    .line 10
    iput-object v1, v0, Lcom/android/server/pm/UserTypeDetails;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    move v1, p8

    .line 11
    iput v1, v0, Lcom/android/server/pm/UserTypeDetails;->mIconBadge:I

    move v1, p9

    .line 12
    iput v1, v0, Lcom/android/server/pm/UserTypeDetails;->mBadgePlain:I

    move v1, p10

    .line 13
    iput v1, v0, Lcom/android/server/pm/UserTypeDetails;->mBadgeNoBackground:I

    move v1, p11

    .line 14
    iput v1, v0, Lcom/android/server/pm/UserTypeDetails;->mStatusBarIcon:I

    move-object v1, p6

    .line 15
    iput-object v1, v0, Lcom/android/server/pm/UserTypeDetails;->mLabels:[I

    move-object v1, p12

    .line 16
    iput-object v1, v0, Lcom/android/server/pm/UserTypeDetails;->mBadgeLabels:[I

    move-object v1, p13

    .line 17
    iput-object v1, v0, Lcom/android/server/pm/UserTypeDetails;->mBadgeColors:[I

    move-object/from16 v1, p14

    .line 18
    iput-object v1, v0, Lcom/android/server/pm/UserTypeDetails;->mDarkThemeBadgeColors:[I

    move/from16 v1, p18

    .line 19
    iput v1, v0, Lcom/android/server/pm/UserTypeDetails;->mAccessibilityString:I

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    return-void
.end method


# virtual methods
.method public final getDefaultUserInfoFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserInfoPropertyFlags:I

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    .line 4
    .line 5
    or-int/2addr p0, v0

    .line 6
    return p0
.end method

.method public final hasBadge()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mIconBadge:I

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final isProfile()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    .line 2
    .line 3
    and-int/lit16 p0, p0, 0x1000

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method
