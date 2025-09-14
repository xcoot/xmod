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

    .line 4
    const-string/jumbo v1, "false"

    .line 7
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v1, "true"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    xor-int/lit8 v0, v0, 0x1

    .line 20
    sput-boolean v0, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    .line 6
    invoke-direct {v0}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/input/InputKeyCounter;->mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    .line 11
    return-void
.end method

.method public static sendBroadcastKeyCountInternal(Landroid/content/Context;Landroid/util/ArrayMap;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 4
    move-result v0

    .line 5
    const-string v1, "InputKeyCounter"

    .line 7
    if-nez v0, :cond_0

    .line 9
    const-string p0, "No map object"

    .line 11
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 18
    move-result v0

    .line 19
    new-array v2, v0, [Landroid/content/ContentValues;

    .line 21
    const/4 v3, 0x0

    .line 22
    move v4, v3

    .line 23
    :goto_0
    if-ge v4, v0, :cond_1

    .line 25
    new-instance v5, Landroid/content/ContentValues;

    .line 27
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 30
    aput-object v5, v2, v4

    .line 32
    const-string v6, "app_id"

    .line 34
    const-string/jumbo v7, "com.android.server.input"

    .line 37
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    aget-object v5, v2, v4

    .line 42
    const-string/jumbo v6, "feature"

    .line 45
    const-string v7, "BKCS"

    .line 47
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    aget-object v5, v2, v4

    .line 52
    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Ljava/lang/Integer;

    .line 58
    const-string/jumbo v7, "extra"

    .line 61
    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    aget-object v5, v2, v4

    .line 66
    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 69
    move-result-object v6

    .line 70
    check-cast v6, Ljava/lang/Integer;

    .line 72
    const-string/jumbo v7, "value"

    .line 75
    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    add-int/lit8 v4, v4, 0x1

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    new-instance v4, Landroid/content/Intent;

    .line 83
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 86
    const-string/jumbo v5, "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

    .line 89
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string/jumbo v5, "data"

    .line 95
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    const-string/jumbo v5, "com.samsung.android.providers.context"

    .line 101
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 107
    sget-boolean p0, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    .line 109
    if-eqz p0, :cond_2

    .line 111
    new-instance p0, Ljava/lang/StringBuilder;

    .line 113
    const-string v4, "Sendbroadcast keycount - lenght: "

    .line 115
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 121
    move-result p1

    .line 122
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object p0

    .line 129
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_1
    if-ge v3, v0, :cond_2

    .line 134
    aget-object p0, v2, v3

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    .line 138
    const-string v4, "Sendbroadcast keycount - cvs: "

    .line 140
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    .line 146
    move-result-object p0

    .line 147
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object p0

    .line 154
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    add-int/lit8 v3, v3, 0x1

    .line 159
    goto :goto_1

    .line 160
    :cond_2
    return-void
.end method
