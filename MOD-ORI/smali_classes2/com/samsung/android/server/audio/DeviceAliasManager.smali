.class public final Lcom/samsung/android/server/audio/DeviceAliasManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDevices:Landroid/util/SparseArray;

.field public final mLeOnlyDevices:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mDevices:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v1, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mLeOnlyDevices:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v1, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    filled-new-array {v2}, [I

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v4, 0x0

    .line 26
    const/16 v5, 0x8

    .line 27
    .line 28
    filled-new-array {v4, v5}, [I

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-direct {v1, v3, v6}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;-><init>([I[I)V

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;

    .line 40
    .line 41
    filled-new-array {v3}, [I

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    filled-new-array {v4, v5}, [I

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-direct {v1, v3, v5}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;-><init>([I[I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    new-array v1, v0, [I

    .line 60
    .line 61
    :goto_0
    if-ge v4, v0, :cond_1

    .line 62
    .line 63
    const/4 v2, 0x3

    .line 64
    if-ne v4, v2, :cond_0

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_0
    aput v4, v1, v4

    .line 68
    .line 69
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mDevices:Landroid/util/SparseArray;

    .line 73
    .line 74
    new-instance v2, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;

    .line 75
    .line 76
    const/high16 v3, 0x20000000

    .line 77
    .line 78
    const v4, 0x20000002

    .line 79
    .line 80
    .line 81
    filled-new-array {v3, v4}, [I

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-direct {v2, v5, v1}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;-><init>([I[I)V

    .line 86
    .line 87
    .line 88
    const/16 v5, 0x80

    .line 89
    .line 90
    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mDevices:Landroid/util/SparseArray;

    .line 94
    .line 95
    new-instance v2, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;

    .line 96
    .line 97
    filled-new-array {v5, v4}, [I

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-direct {v2, v6, v1}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;-><init>([I[I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mDevices:Landroid/util/SparseArray;

    .line 108
    .line 109
    new-instance v2, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;

    .line 110
    .line 111
    filled-new-array {v3, v5}, [I

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-direct {v2, v5, v1}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;-><init>([I[I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mLeOnlyDevices:Landroid/util/SparseArray;

    .line 122
    .line 123
    new-instance v2, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;

    .line 124
    .line 125
    filled-new-array {v4}, [I

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-direct {v2, v5, v1}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;-><init>([I[I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    iget-object p0, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mLeOnlyDevices:Landroid/util/SparseArray;

    .line 136
    .line 137
    new-instance v0, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;

    .line 138
    .line 139
    filled-new-array {v3}, [I

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-direct {v0, v2, v1}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;-><init>([I[I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    return-void
.end method
