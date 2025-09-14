.class public final Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mColor:I

.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final mForceStartScreenFlash:Z

.field public final mNotiType:I

.field public final mOffDuration:I

.field public final mOnDuration:I

.field public mRepeat:I

.field public final mTag:Ljava/lang/String;

.field public final mToken:Landroid/os/IBinder;

.field public final mType:I


# direct methods
.method public constructor <init>(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p1

    move v5, p2

    .line 19
    invoke-direct/range {v0 .. v7}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(Ljava/lang/String;IILandroid/os/IBinder;Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;)V

    .line 21
    const-string p4, "alarm"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 p5, 0x3

    if-nez p4, :cond_b

    const-string/jumbo p4, "preview"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo p4, "screen_flash_notification_color_mode"

    const/4 p6, 0x0

    const/4 p7, -0x2

    invoke-static {p2, p4, p6, p7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const-string/jumbo v0, "camera_flash_notification_app_list"

    invoke-static {p4, v0, p7}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    .line 24
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3b

    if-nez v0, :cond_1

    const-string v0, "all"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 25
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    array-length v0, p4

    move v3, p6

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p4, v3

    .line 26
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    :goto_1
    move p4, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move p4, p6

    .line 27
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "screen_flash_notification_color_apps"

    invoke-static {p1, v0, p7}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p7

    const/4 v0, 0x2

    if-nez p7, :cond_5

    .line 29
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p1, p7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p7, p1

    move v2, p6

    :goto_3
    if-ge v2, p7, :cond_5

    aget-object v3, p1, v2

    const/16 v4, 0x23

    .line 30
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 31
    aget-object v4, v3, p6

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    aget-object v4, v3, v0

    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_4
    if-eqz p2, :cond_7

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    move p1, p6

    goto :goto_6

    :cond_7
    :goto_5
    move p1, v1

    :goto_6
    if-eqz p4, :cond_8

    if-eqz p1, :cond_8

    .line 32
    iput p5, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mNotiType:I

    goto :goto_7

    :cond_8
    if-eqz p4, :cond_9

    .line 33
    iput v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mNotiType:I

    goto :goto_7

    :cond_9
    if-eqz p1, :cond_a

    .line 34
    iput v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mNotiType:I

    goto :goto_7

    .line 35
    :cond_a
    iput p6, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mNotiType:I

    :goto_7
    if-ne p2, v1, :cond_c

    if-eqz p1, :cond_c

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "#"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p2, v3, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mColor:I

    goto :goto_8

    .line 37
    :cond_b
    iput p5, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mNotiType:I

    :cond_c
    :goto_8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILandroid/os/IBinder;Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mType:I

    .line 3
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mTag:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mColor:I

    .line 5
    iput-object p4, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mToken:Landroid/os/IBinder;

    .line 6
    iput-object p5, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 p1, 0x2

    const/4 p3, 0x0

    if-eq p2, p1, :cond_1

    const/4 p4, 0x3

    if-eq p2, p4, :cond_0

    const/16 p2, 0x15e

    .line 7
    iput p2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOnDuration:I

    const/16 p2, 0xfa

    .line 8
    iput p2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOffDuration:I

    .line 9
    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mRepeat:I

    .line 10
    iput-boolean p3, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mForceStartScreenFlash:Z

    goto :goto_0

    :cond_0
    const/16 p1, 0x1388

    .line 11
    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOnDuration:I

    const/16 p1, 0x3e8

    .line 12
    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOffDuration:I

    const/4 p1, 0x1

    .line 13
    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mRepeat:I

    .line 14
    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mForceStartScreenFlash:Z

    goto :goto_0

    :cond_1
    const/16 p1, 0x2bc

    .line 15
    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOnDuration:I

    .line 16
    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOffDuration:I

    .line 17
    iput p3, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mRepeat:I

    .line 18
    iput-boolean p3, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mForceStartScreenFlash:Z

    :goto_0
    return-void
.end method
