.class public final Lcom/android/server/smartclip/SpenThemeManager$2;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/SpenThemeManager;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenThemeManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$2;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$2;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string v0, "com.samsung.android.pentastic"

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string/jumbo v2, "pen_custom_double_tap_action_enabled"

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string/jumbo v2, "pen_custom_double_tap_action_shortcut"

    .line 46
    .line 47
    .line 48
    const-string v3, ""

    .line 49
    .line 50
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/4 v2, 0x0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    .line 64
    .line 65
    aget-object v0, v0, v1

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, p1, v2, v0, v0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenHoverIcon(Ljava/lang/String;Ljava/io/FileDescriptor;FF)V

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    .line 85
    .line 86
    iget-object v0, v0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    .line 87
    .line 88
    const/4 v1, 0x1

    .line 89
    aget-object v0, v0, v1

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    invoke-virtual {p0, v2, p1, v2}, Lcom/android/server/smartclip/SpenThemeManager;->setPenAttachSound(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_5
    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_6
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    .line 108
    .line 109
    iget-object v0, v0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    .line 110
    .line 111
    const/4 v1, 0x2

    .line 112
    aget-object v0, v0, v1

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_7

    .line 119
    .line 120
    invoke-virtual {p0, v2, p1, v2}, Lcom/android/server/smartclip/SpenThemeManager;->setPenDetachSound(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_7
    :goto_3
    return-void
.end method
