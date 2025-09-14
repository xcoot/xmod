.class public final Lcom/android/server/policy/KeyboardShortcutManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SHORT_TYPE_LIST:[I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIsConsumedMeta:Z

.field public mIsTriggeredMeta:Z

.field public final mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

.field public final mPreloadBehaviorMap:Landroid/util/SparseArray;

.field public final mShortcutMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    const/4 v4, 0x2

    .line 6
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/android/server/policy/KeyboardShortcutManager;->SHORT_TYPE_LIST:[I

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPreloadBehaviorMap:Landroid/util/SparseArray;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mIsTriggeredMeta:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mIsConsumedMeta:Z

    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 26
    .line 27
    return-void
.end method

.method public static getSaLoggerEventId(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x29

    .line 2
    .line 3
    if-eq p0, v0, :cond_4

    .line 4
    .line 5
    const/16 v0, 0x2c

    .line 6
    .line 7
    if-eq p0, v0, :cond_3

    .line 8
    .line 9
    const/16 v0, 0x36

    .line 10
    .line 11
    if-eq p0, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x2e

    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x2f

    .line 18
    .line 19
    if-eq p0, v0, :cond_0

    .line 20
    .line 21
    packed-switch p0, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    packed-switch p0, :pswitch_data_1

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0

    .line 29
    :pswitch_0
    const-string p0, "PKBD0012"

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_1
    const-string p0, "PKBD0011"

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_2
    const-string p0, "PKBD0061"

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_3
    const-string p0, "PKBD0060"

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_4
    const-string p0, "PKBD0009"

    .line 42
    .line 43
    return-object p0

    .line 44
    :pswitch_5
    const-string p0, "PKBD0059"

    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_6
    const-string p0, "PKBD0008"

    .line 48
    .line 49
    return-object p0

    .line 50
    :pswitch_7
    const-string p0, "PKBD0058"

    .line 51
    .line 52
    return-object p0

    .line 53
    :pswitch_8
    const-string p0, "PKBD0057"

    .line 54
    .line 55
    return-object p0

    .line 56
    :pswitch_9
    const-string p0, "PKBD0056"

    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_0
    const-string p0, "PKBD0065"

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_1
    const-string p0, "PKBD0015"

    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_2
    const-string p0, "PKBD0021"

    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_3
    const-string p0, "PKBD0064"

    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_4
    const-string p0, "PKBD0062"

    .line 72
    .line 73
    return-object p0

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    :pswitch_data_1
    .packed-switch 0x24
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const-string p0, "META_Z"

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    const-string p0, "META_U"

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_2
    const-string p0, "META_G"

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_3
    const-string p0, "META_F"

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_4
    const-string p0, "OTHERS"

    .line 33
    .line 34
    return-object p0
.end method


# virtual methods
.method public final getBehavior(I)Lcom/android/server/policy/KeyboardShortcutManager$Behavior;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 3
    .line 4
    if-eq p1, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    new-instance p1, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    new-instance v0, Landroid/content/Intent;

    .line 20
    .line 21
    const-string v2, "android.intent.action.MAIN"

    .line 22
    .line 23
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, p0, v1, v0}, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_0
    new-instance p1, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    .line 35
    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_1
    new-instance p1, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-direct {p1, p0, v1, v0}, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 44
    .line 45
    .line 46
    new-instance p0, Landroid/content/Intent;

    .line 47
    .line 48
    const-string v0, "com.samsung.accessibility.ACCESSIBILITY_SETTINGS"

    .line 49
    .line 50
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const v0, 0x10008000

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    iput-object p0, p1, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mIntent:Landroid/content/Intent;

    .line 60
    .line 61
    return-object p1

    .line 62
    :cond_2
    new-instance p1, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    const/4 v0, 0x3

    .line 67
    invoke-direct {p1, p0, v1, v0}, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 68
    .line 69
    .line 70
    new-instance p0, Landroid/content/Intent;

    .line 71
    .line 72
    const-string v0, "com.samsung.android.game.gametools.action.togglemenu"

    .line 73
    .line 74
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v0, "com.samsung.android.game.gametools"

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    const-string/jumbo v0, "package"

    .line 83
    .line 84
    .line 85
    const-string/jumbo v1, "window-g"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    iput-object p0, p1, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mIntent:Landroid/content/Intent;

    .line 92
    .line 93
    return-object p1

    .line 94
    :cond_3
    new-instance p1, Lcom/android/server/policy/KeyboardShortcutManager$SFinderBehavior;

    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/KeyboardShortcutManager$SFinderBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    .line 99
    .line 100
    .line 101
    return-object p1
.end method

.method public final getShortcutForKey(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, ""

    .line 14
    .line 15
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/String;

    .line 20
    .line 21
    const/4 v1, -0x2

    .line 22
    invoke-static {v0, p0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->IFW_AI_HOT_KEY:Z

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const/16 v0, 0x2b

    .line 31
    .line 32
    if-ne p1, v0, :cond_0

    .line 33
    .line 34
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    const-string p0, "com.samsung.android.intent.action.AI_ASSIST"

    .line 41
    .line 42
    :cond_0
    return-object p0
.end method

.method public final launch(IILjava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPreloadBehaviorMap:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyboardShortcutManager;->getBehavior(I)Lcom/android/server/policy/KeyboardShortcutManager$Behavior;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "launch type="

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p2}, Lcom/android/server/policy/KeyboardShortcutManager;->typeToString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, " componentName="

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, " "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "KeyboardShortcutManager"

    .line 50
    .line 51
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mIntent:Landroid/content/Intent;

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    const-string p0, "Intent is null"

    .line 60
    .line 61
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :goto_0
    move-object v1, v3

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    if-eqz p2, :cond_4

    .line 67
    .line 68
    const/4 p3, 0x1

    .line 69
    if-eq p2, p3, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTopActivity:Landroid/content/ComponentName;

    .line 75
    .line 76
    if-nez p0, :cond_3

    .line 77
    .line 78
    const-string p0, "META_F, Unknown top activity!"

    .line 79
    .line 80
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string p3, "META_F, top="

    .line 87
    .line 88
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    const-string p2, "componentname"

    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {v1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-eqz p0, :cond_5

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 127
    .line 128
    .line 129
    :goto_1
    const/4 p0, 0x0

    .line 130
    if-nez v1, :cond_6

    .line 131
    .line 132
    const-string p1, "Can not launch app, intent is null"

    .line 133
    .line 134
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    return p0

    .line 138
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->preCondition()Z

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    if-eqz p2, :cond_7

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_7
    invoke-virtual {v0, p1}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->startTargetApp(I)Z

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    :goto_2
    return p0
.end method
