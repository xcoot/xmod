.class public final Lcom/android/server/input/InputKeyCounter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.product_ship"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "false"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v1, "true"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    xor-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    sput-boolean v0, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/input/InputKeyCounter;->mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    .line 10
    .line 11
    return-void
.end method

.method public static sendBroadcastKeyCountInternal(Landroid/content/Context;Landroid/util/ArrayMap;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "InputKeyCounter"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "No map object"

    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    new-array v2, v0, [Landroid/content/ContentValues;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    move v4, v3

    .line 23
    :goto_0
    if-ge v4, v0, :cond_1

    .line 24
    .line 25
    new-instance v5, Landroid/content/ContentValues;

    .line 26
    .line 27
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 28
    .line 29
    .line 30
    aput-object v5, v2, v4

    .line 31
    .line 32
    const-string v6, "app_id"

    .line 33
    .line 34
    const-string/jumbo v7, "com.android.server.input"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    aget-object v5, v2, v4

    .line 41
    .line 42
    const-string/jumbo v6, "feature"

    .line 43
    .line 44
    .line 45
    const-string v7, "BKCS"

    .line 46
    .line 47
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    aget-object v5, v2, v4

    .line 51
    .line 52
    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Ljava/lang/Integer;

    .line 57
    .line 58
    const-string/jumbo v7, "extra"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    .line 63
    .line 64
    aget-object v5, v2, v4

    .line 65
    .line 66
    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    check-cast v6, Ljava/lang/Integer;

    .line 71
    .line 72
    const-string/jumbo v7, "value"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    .line 77
    .line 78
    add-int/lit8 v4, v4, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    new-instance v4, Landroid/content/Intent;

    .line 82
    .line 83
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string/jumbo v5, "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    const-string/jumbo v5, "data"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    const-string/jumbo v5, "com.samsung.android.providers.context"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    .line 106
    .line 107
    sget-boolean p0, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    .line 108
    .line 109
    if-eqz p0, :cond_2

    .line 110
    .line 111
    new-instance p0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v4, "Sendbroadcast keycount - lenght: "

    .line 114
    .line 115
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    :goto_1
    if-ge v3, v0, :cond_2

    .line 133
    .line 134
    aget-object p0, v2, v3

    .line 135
    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v4, "Sendbroadcast keycount - cvs: "

    .line 139
    .line 140
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    add-int/lit8 v3, v3, 0x1

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_2
    return-void
.end method
