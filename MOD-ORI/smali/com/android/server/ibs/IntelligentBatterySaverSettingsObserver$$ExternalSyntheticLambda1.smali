.class public final synthetic Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

.field public final synthetic f$1:Landroid/content/ContentResolver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;Landroid/content/ContentResolver;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;->f$1:Landroid/content/ContentResolver;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;->f$1:Landroid/content/ContentResolver;

    .line 9
    .line 10
    check-cast p1, Landroid/net/Uri;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mSettingsObserver:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;->f$1:Landroid/content/ContentResolver;

    .line 23
    .line 24
    check-cast p1, Landroid/net/Uri;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mSettingsObserver:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;

    .line 27
    .line 28
    const/4 v1, -0x1

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;->f$1:Landroid/content/ContentResolver;

    .line 37
    .line 38
    check-cast p1, Landroid/net/Uri;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mSettingsObserver:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;

    .line 41
    .line 42
    const/4 v1, -0x1

    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;->f$1:Landroid/content/ContentResolver;

    .line 51
    .line 52
    check-cast p1, Landroid/net/Uri;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mSettingsObserver:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;

    .line 55
    .line 56
    const/4 v1, -0x1

    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;->f$1:Landroid/content/ContentResolver;

    .line 65
    .line 66
    check-cast p1, Landroid/net/Uri;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mSettingsObserver:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;

    .line 69
    .line 70
    const/4 v1, -0x1

    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
