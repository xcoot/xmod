.class public final Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBaseCodePath:Ljava/lang/String;

.field public mCache:Landroid/content/om/OverlayInfo;

.field public mCategory:Ljava/lang/String;

.field public mIsEnabled:Z

.field public final mIsFabricated:Z

.field public final mIsMutable:Z

.field public final mOverlay:Landroid/content/om/OverlayIdentifier;

.field public mPriority:I

.field public mState:I

.field public final mTargetOverlayableName:Ljava/lang/String;

.field public final mTargetPackageName:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public static -$$Nest$mgetOverlayInfo(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/content/om/OverlayInfo;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mOverlay:Landroid/content/om/OverlayIdentifier;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mOverlay:Landroid/content/om/OverlayIdentifier;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    .line 22
    .line 23
    iget v8, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    .line 24
    .line 25
    iget v10, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    .line 26
    .line 27
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetOverlayableName:Ljava/lang/String;

    .line 28
    .line 29
    iget v9, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    .line 30
    .line 31
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    .line 32
    .line 33
    iget-boolean v11, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsMutable:Z

    .line 34
    .line 35
    iget-boolean v12, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsFabricated:Z

    .line 36
    .line 37
    move-object v1, v0

    .line 38
    invoke-direct/range {v1 .. v12}, Landroid/content/om/OverlayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    .line 42
    .line 43
    :cond_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    .line 44
    .line 45
    return-object p0
.end method

.method public constructor <init>(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mOverlay:Landroid/content/om/OverlayIdentifier;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetOverlayableName:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    .line 17
    .line 18
    iput-object p10, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    .line 22
    .line 23
    iput-boolean p8, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsMutable:Z

    .line 24
    .line 25
    iput p9, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    .line 26
    .line 27
    iput-boolean p11, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsFabricated:Z

    .line 28
    .line 29
    return-void
.end method
