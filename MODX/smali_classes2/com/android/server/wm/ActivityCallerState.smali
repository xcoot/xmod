.class public final Lcom/android/server/wm/ActivityCallerState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mCallerTokenInfoMap:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/ActivityCallerState;->mCallerTokenInfoMap:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/ActivityCallerState;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    return-void
.end method

.method public static addUriIfContentUri(Landroid/net/Uri;Landroid/util/ArraySet;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const-string v0, "content"

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public static getContentUrisFromIntent(Landroid/content/Intent;)Landroid/util/ArraySet;
    .locals 7

    .line 1
    const-string v0, "ActivityTaskManager"

    .line 2
    .line 3
    new-instance v1, Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 6
    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v2, v1}, Lcom/android/server/wm/ActivityCallerState;->addUriIfContentUri(Landroid/net/Uri;Landroid/util/ArraySet;)V

    .line 16
    .line 17
    .line 18
    const-string v2, "android.intent.extra.STREAM"

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    :try_start_0
    const-class v4, Landroid/net/Uri;

    .line 28
    .line 29
    invoke-virtual {p0, v2, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object v4
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v4

    .line 35
    new-instance v5, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v6, "Failed to unparcel an ArrayList of URIs in EXTRA_STREAM, returning null: "

    .line 38
    .line 39
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-object v4, v3

    .line 53
    :goto_0
    if-nez v4, :cond_1

    .line 54
    .line 55
    :try_start_1
    const-class v4, Landroid/net/Uri;

    .line 56
    .line 57
    invoke-virtual {p0, v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    .line 63
    move-object v3, v2

    .line 64
    goto :goto_1

    .line 65
    :catch_1
    move-exception v2

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v5, "Failed to unparcel an URI in EXTRA_STREAM, returning null: "

    .line 69
    .line 70
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :goto_1
    invoke-static {v3, v1}, Lcom/android/server/wm/ActivityCallerState;->addUriIfContentUri(Landroid/net/Uri;Landroid/util/ArraySet;)V

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    add-int/lit8 v0, v0, -0x1

    .line 92
    .line 93
    :goto_2
    if-ltz v0, :cond_2

    .line 94
    .line 95
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Landroid/net/Uri;

    .line 100
    .line 101
    invoke-static {v2, v1}, Lcom/android/server/wm/ActivityCallerState;->addUriIfContentUri(Landroid/net/Uri;Landroid/util/ArraySet;)V

    .line 102
    .line 103
    .line 104
    add-int/lit8 v0, v0, -0x1

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_2
    :goto_3
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    if-nez p0, :cond_3

    .line 112
    .line 113
    return-object v1

    .line 114
    :cond_3
    const/4 v0, 0x0

    .line 115
    :goto_4
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-ge v0, v2, :cond_4

    .line 120
    .line 121
    invoke-virtual {p0, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-static {v3, v1}, Lcom/android/server/wm/ActivityCallerState;->addUriIfContentUri(Landroid/net/Uri;Landroid/util/ArraySet;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-static {v2}, Lcom/android/server/wm/ActivityCallerState;->getContentUrisFromIntent(Landroid/content/Intent;)Landroid/util/ArraySet;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 141
    .line 142
    .line 143
    add-int/lit8 v0, v0, 0x1

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_4
    return-object v1
.end method
