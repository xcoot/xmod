.class public final Landroid/os/epic/EpicHIDLObject;
.super Landroid/os/epic/IEpicObject$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final EPIC_CLASS:Ljava/lang/String; = "vendor.samsung_slsi.hardware.epic.V1_0.IEpicRequest"

.field private static final EPIC_HANDLE_CLASS:Ljava/lang/String; = "vendor.samsung_slsi.hardware.epic.V1_0.IEpicHandle"

.field private static final TAG:Ljava/lang/String; = "EpicObject"

.field private static m_epic_getservice_func:Ljava/lang/reflect/Method; = null

.field private static m_epic_handle_cls:Ljava/lang/Class; = null

.field private static m_epic_hint_release_func:Ljava/lang/reflect/Method; = null

.field private static m_epic_init_func:Ljava/lang/reflect/Method; = null

.field private static m_epic_init_multi_func:Ljava/lang/reflect/Method; = null

.field private static m_epic_perf_hint_func:Ljava/lang/reflect/Method; = null

.field private static m_epic_release_conditional_func:Ljava/lang/reflect/Method; = null

.field private static m_epic_release_func:Ljava/lang/reflect/Method; = null

.field private static m_epic_request_cls:Ljava/lang/Class; = null

.field private static m_epic_request_conditional_func:Ljava/lang/reflect/Method; = null

.field private static m_epic_request_func:Ljava/lang/reflect/Method; = null

.field private static m_epic_request_opt_func:Ljava/lang/reflect/Method; = null

.field private static m_epic_request_opt_multi_func:Ljava/lang/reflect/Method; = null

.field private static m_has_load:Z = false


# instance fields
.field private m_handle_obj:Ljava/lang/Object;

.field private m_request_obj:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/epic/IEpicObject$Stub;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/os/epic/EpicHIDLObject;->m_request_obj:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Landroid/os/epic/EpicHIDLObject;->m_handle_obj:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Landroid/os/epic/EpicHIDLObject;->create_instance()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 5
    invoke-direct {p0}, Landroid/os/epic/EpicHIDLObject;-><init>()V

    .line 6
    sget-boolean v0, Landroid/os/epic/EpicHIDLObject;->m_has_load:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_getservice_func:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/os/epic/EpicHIDLObject;->m_request_obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 8
    sget-object v1, Landroid/os/epic/EpicHIDLObject;->m_epic_init_func:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/os/epic/EpicHIDLObject;->m_handle_obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>([I)V
    .locals 3

    .line 9
    invoke-direct {p0}, Landroid/os/epic/EpicHIDLObject;-><init>()V

    .line 10
    sget-boolean v0, Landroid/os/epic/EpicHIDLObject;->m_has_load:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_getservice_func:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 11
    :try_start_0
    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/os/epic/EpicHIDLObject;->m_request_obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 13
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 14
    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_1
    sget-object p1, Landroid/os/epic/EpicHIDLObject;->m_epic_init_multi_func:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/os/epic/EpicHIDLObject;->m_request_obj:Ljava/lang/Object;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/os/epic/EpicHIDLObject;->m_handle_obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method private create_instance()V
    .locals 14

    .line 1
    const-class p0, Landroid/os/epic/EpicHIDLObject;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    sget-boolean v0, Landroid/os/epic/EpicHIDLObject;->m_has_load:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :cond_0
    :try_start_2
    const-string/jumbo v0, "vendor.samsung_slsi.hardware.epic.V1_0.IEpicRequest"

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    .line 22
    .line 23
    const-string/jumbo v0, "vendor.samsung_slsi.hardware.epic.V1_0.IEpicHandle"

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_handle_cls:Ljava/lang/Class;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    new-array v3, v2, [Ljava/lang/Class;

    .line 34
    .line 35
    new-array v3, v1, [Ljava/lang/Class;

    .line 36
    .line 37
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 38
    .line 39
    aput-object v4, v3, v2

    .line 40
    .line 41
    new-array v5, v1, [Ljava/lang/Class;

    .line 42
    .line 43
    const-class v6, Ljava/util/ArrayList;

    .line 44
    .line 45
    aput-object v6, v5, v2

    .line 46
    .line 47
    new-array v6, v1, [Ljava/lang/Class;

    .line 48
    .line 49
    aput-object v0, v6, v2

    .line 50
    .line 51
    new-array v7, v1, [Ljava/lang/Class;

    .line 52
    .line 53
    aput-object v0, v7, v2

    .line 54
    .line 55
    const/4 v8, 0x3

    .line 56
    new-array v9, v8, [Ljava/lang/Class;

    .line 57
    .line 58
    aput-object v0, v9, v2

    .line 59
    .line 60
    aput-object v4, v9, v1

    .line 61
    .line 62
    const/4 v10, 0x2

    .line 63
    aput-object v4, v9, v10

    .line 64
    .line 65
    new-array v4, v8, [Ljava/lang/Class;

    .line 66
    .line 67
    aput-object v0, v4, v2

    .line 68
    .line 69
    const-class v8, Ljava/util/ArrayList;

    .line 70
    .line 71
    aput-object v8, v4, v1

    .line 72
    .line 73
    const-class v8, Ljava/util/ArrayList;

    .line 74
    .line 75
    aput-object v8, v4, v10

    .line 76
    .line 77
    new-array v8, v10, [Ljava/lang/Class;

    .line 78
    .line 79
    aput-object v0, v8, v2

    .line 80
    .line 81
    const-class v11, Ljava/lang/String;

    .line 82
    .line 83
    aput-object v11, v8, v1

    .line 84
    .line 85
    new-array v11, v10, [Ljava/lang/Class;

    .line 86
    .line 87
    aput-object v0, v11, v2

    .line 88
    .line 89
    const-class v12, Ljava/lang/String;

    .line 90
    .line 91
    aput-object v12, v11, v1

    .line 92
    .line 93
    new-array v12, v10, [Ljava/lang/Class;

    .line 94
    .line 95
    aput-object v0, v12, v2

    .line 96
    .line 97
    const-class v13, Ljava/lang/String;

    .line 98
    .line 99
    aput-object v13, v12, v1

    .line 100
    .line 101
    new-array v10, v10, [Ljava/lang/Class;

    .line 102
    .line 103
    aput-object v0, v10, v2

    .line 104
    .line 105
    const-class v0, Ljava/lang/String;

    .line 106
    .line 107
    aput-object v0, v10, v1

    .line 108
    .line 109
    sget-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    .line 110
    .line 111
    const-string/jumbo v2, "getService"

    .line 112
    .line 113
    .line 114
    const/4 v13, 0x0

    .line 115
    invoke-virtual {v0, v2, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    sput-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_getservice_func:Ljava/lang/reflect/Method;

    .line 120
    .line 121
    sget-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    .line 122
    .line 123
    const-string/jumbo v2, "init"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    sput-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_init_func:Ljava/lang/reflect/Method;

    .line 131
    .line 132
    sget-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    .line 133
    .line 134
    const-string/jumbo v2, "init_multi"

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    sput-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_init_multi_func:Ljava/lang/reflect/Method;

    .line 142
    .line 143
    sget-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    .line 144
    .line 145
    const-string v2, "acquire_lock"

    .line 146
    .line 147
    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    sput-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_func:Ljava/lang/reflect/Method;

    .line 152
    .line 153
    sget-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    .line 154
    .line 155
    const-string/jumbo v2, "release_lock"

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    sput-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_release_func:Ljava/lang/reflect/Method;

    .line 163
    .line 164
    sget-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    .line 165
    .line 166
    const-string v2, "acquire_lock_option"

    .line 167
    .line 168
    invoke-virtual {v0, v2, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    sput-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_opt_func:Ljava/lang/reflect/Method;

    .line 173
    .line 174
    sget-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    .line 175
    .line 176
    const-string v2, "acquire_lock_multi_option"

    .line 177
    .line 178
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    sput-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_opt_multi_func:Ljava/lang/reflect/Method;

    .line 183
    .line 184
    sget-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    .line 185
    .line 186
    const-string v2, "acquire_lock_conditional"

    .line 187
    .line 188
    invoke-virtual {v0, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    sput-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_conditional_func:Ljava/lang/reflect/Method;

    .line 193
    .line 194
    sget-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    .line 195
    .line 196
    const-string/jumbo v2, "release_lock_conditional"

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v2, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    sput-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_release_conditional_func:Ljava/lang/reflect/Method;

    .line 204
    .line 205
    sget-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    .line 206
    .line 207
    const-string/jumbo v2, "perf_hint"

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v2, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    sput-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_perf_hint_func:Ljava/lang/reflect/Method;

    .line 215
    .line 216
    sget-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    .line 217
    .line 218
    const-string/jumbo v2, "hint_release"

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v2, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    sput-object v0, Landroid/os/epic/EpicHIDLObject;->m_epic_hint_release_func:Ljava/lang/reflect/Method;

    .line 226
    .line 227
    sput-boolean v1, Landroid/os/epic/EpicHIDLObject;->m_has_load:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    .line 229
    :catch_0
    :try_start_3
    monitor-exit p0

    .line 230
    return-void

    .line 231
    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 232
    throw v0
.end method


# virtual methods
.method public acquire_lock()Z
    .locals 3

    .line 1
    sget-boolean v0, Landroid/os/epic/EpicHIDLObject;->m_has_load:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroid/os/epic/EpicHIDLObject;->m_request_obj:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicHIDLObject;->m_epic_request_func:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    iget-object p0, p0, Landroid/os/epic/EpicHIDLObject;->m_handle_obj:Ljava/lang/Object;

    .line 14
    .line 15
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public acquire_lock_conditional(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-boolean v0, Landroid/os/epic/EpicHIDLObject;->m_has_load:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroid/os/epic/EpicHIDLObject;->m_request_obj:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicHIDLObject;->m_epic_request_conditional_func:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    iget-object p0, p0, Landroid/os/epic/EpicHIDLObject;->m_handle_obj:Ljava/lang/Object;

    .line 14
    .line 15
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public acquire_lock_option(II)Z
    .locals 3

    .line 1
    sget-boolean v0, Landroid/os/epic/EpicHIDLObject;->m_has_load:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroid/os/epic/EpicHIDLObject;->m_request_obj:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicHIDLObject;->m_epic_request_opt_func:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    iget-object p0, p0, Landroid/os/epic/EpicHIDLObject;->m_handle_obj:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public acquire_lock_option_multi([I[I)Z
    .locals 4

    .line 1
    sget-boolean v0, Landroid/os/epic/EpicHIDLObject;->m_has_load:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Landroid/os/epic/EpicHIDLObject;->m_request_obj:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    move v2, v1

    .line 17
    :goto_0
    array-length v3, p1

    .line 18
    if-ge v2, v3, :cond_1

    .line 19
    .line 20
    aget v3, p1, v2

    .line 21
    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    move v2, v1

    .line 38
    :goto_1
    array-length v3, p2

    .line 39
    if-ge v2, v3, :cond_2

    .line 40
    .line 41
    aget v3, p2, v2

    .line 42
    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    sget-object p2, Landroid/os/epic/EpicHIDLObject;->m_epic_request_opt_multi_func:Ljava/lang/reflect/Method;

    .line 54
    .line 55
    iget-object v2, p0, Landroid/os/epic/EpicHIDLObject;->m_request_obj:Ljava/lang/Object;

    .line 56
    .line 57
    iget-object p0, p0, Landroid/os/epic/EpicHIDLObject;->m_handle_obj:Ljava/lang/Object;

    .line 58
    .line 59
    filled-new-array {p0, v0, p1}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p2, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    check-cast p0, Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    if-eqz p0, :cond_3

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    :catch_0
    :cond_3
    :goto_2
    return v1
.end method

.method public hint_release(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-boolean v0, Landroid/os/epic/EpicHIDLObject;->m_has_load:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroid/os/epic/EpicHIDLObject;->m_request_obj:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicHIDLObject;->m_epic_hint_release_func:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    iget-object p0, p0, Landroid/os/epic/EpicHIDLObject;->m_handle_obj:Ljava/lang/Object;

    .line 14
    .line 15
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public perf_hint(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-boolean v0, Landroid/os/epic/EpicHIDLObject;->m_has_load:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroid/os/epic/EpicHIDLObject;->m_request_obj:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicHIDLObject;->m_epic_perf_hint_func:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    iget-object p0, p0, Landroid/os/epic/EpicHIDLObject;->m_handle_obj:Ljava/lang/Object;

    .line 14
    .line 15
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public release_lock()Z
    .locals 3

    .line 1
    sget-boolean v0, Landroid/os/epic/EpicHIDLObject;->m_has_load:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroid/os/epic/EpicHIDLObject;->m_request_obj:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicHIDLObject;->m_epic_release_func:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    iget-object p0, p0, Landroid/os/epic/EpicHIDLObject;->m_handle_obj:Ljava/lang/Object;

    .line 14
    .line 15
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public release_lock_conditional(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-boolean v0, Landroid/os/epic/EpicHIDLObject;->m_has_load:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroid/os/epic/EpicHIDLObject;->m_request_obj:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicHIDLObject;->m_epic_release_conditional_func:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    iget-object p0, p0, Landroid/os/epic/EpicHIDLObject;->m_handle_obj:Ljava/lang/Object;

    .line 14
    .line 15
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    :catch_0
    :cond_1
    :goto_0
    return v1
.end method
