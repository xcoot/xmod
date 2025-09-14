.class public final synthetic Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:[Lcom/android/internal/view/AppearanceRegion;

.field public final synthetic f$3:Z

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:[Lcom/android/internal/statusbar/LetterboxDetails;


# direct methods
.method public synthetic constructor <init>(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;I)V
    .locals 0

    .line 1
    iput p9, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$0:I

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$1:I

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$2:[Lcom/android/internal/view/AppearanceRegion;

    .line 8
    .line 9
    iput-boolean p4, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$3:Z

    .line 10
    .line 11
    iput p5, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$4:I

    .line 12
    .line 13
    iput p6, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$5:I

    .line 14
    .line 15
    iput-object p7, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$6:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p8, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$7:[Lcom/android/internal/statusbar/LetterboxDetails;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$0:I

    .line 7
    .line 8
    iget v3, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$1:I

    .line 9
    .line 10
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$2:[Lcom/android/internal/view/AppearanceRegion;

    .line 11
    .line 12
    iget-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$3:Z

    .line 13
    .line 14
    iget v6, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$4:I

    .line 15
    .line 16
    iget v7, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$5:I

    .line 17
    .line 18
    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$6:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v9, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$7:[Lcom/android/internal/statusbar/LetterboxDetails;

    .line 21
    .line 22
    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 23
    .line 24
    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 25
    .line 26
    iget-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    invoke-virtual {p0, v2, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(II)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    iput v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    .line 34
    .line 35
    iput-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 36
    .line 37
    iput-boolean v5, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    .line 38
    .line 39
    iput v6, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mBehavior:I

    .line 40
    .line 41
    iput v7, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mRequestedVisibleTypes:I

    .line 42
    .line 43
    iput-object v8, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mPackageName:Ljava/lang/String;

    .line 44
    .line 45
    iput-object v9, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    .line 46
    .line 47
    iget-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 48
    .line 49
    iget-object v10, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarLock:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter v10

    .line 52
    :try_start_0
    iget-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 55
    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    if-eqz p0, :cond_0

    .line 65
    .line 66
    :try_start_1
    iget-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 69
    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    move-object v1, p0

    .line 79
    check-cast v1, Lcom/android/internal/statusbar/IStatusBar;

    .line 80
    .line 81
    invoke-interface/range {v1 .. v9}, Lcom/android/internal/statusbar/IStatusBar;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    goto :goto_1

    .line 87
    :catch_0
    :try_start_2
    const-string p0, "StatusBarManagerService"

    .line 88
    .line 89
    const-string p1, "RemoteException for onSystemBarAttributesChanged"

    .line 90
    .line 91
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    .line 96
    .line 97
    if-eqz p0, :cond_1

    .line 98
    .line 99
    iget-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCarLifeBar:Lcom/android/internal/carlife/IStatusBarCarLife;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    .line 103
    if-eqz p0, :cond_1

    .line 104
    .line 105
    :try_start_3
    iget-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCarLifeBar:Lcom/android/internal/carlife/IStatusBarCarLife;

    .line 108
    .line 109
    invoke-interface/range {v1 .. v8}, Lcom/android/internal/carlife/IStatusBarCarLife;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catch_1
    :try_start_4
    const-string p0, "StatusBarManagerService"

    .line 114
    .line 115
    const-string p1, "RemoteException for onSystemBarAttributesChanged"

    .line 116
    .line 117
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    :cond_1
    :goto_0
    monitor-exit v10

    .line 121
    return-void

    .line 122
    :goto_1
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 123
    throw p0

    .line 124
    :pswitch_0
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$0:I

    .line 125
    .line 126
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$1:I

    .line 127
    .line 128
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$2:[Lcom/android/internal/view/AppearanceRegion;

    .line 129
    .line 130
    iget-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$3:Z

    .line 131
    .line 132
    iget v5, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$4:I

    .line 133
    .line 134
    iget v6, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$5:I

    .line 135
    .line 136
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$6:Ljava/lang/String;

    .line 137
    .line 138
    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$7:[Lcom/android/internal/statusbar/LetterboxDetails;

    .line 139
    .line 140
    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 141
    .line 142
    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 143
    .line 144
    iget-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 145
    .line 146
    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0, v1, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(II)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    iput v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    .line 152
    .line 153
    iput-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 154
    .line 155
    iput-boolean v4, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    .line 156
    .line 157
    iput v5, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mBehavior:I

    .line 158
    .line 159
    iput v6, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mRequestedVisibleTypes:I

    .line 160
    .line 161
    iput-object v7, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mPackageName:Ljava/lang/String;

    .line 162
    .line 163
    iput-object v8, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    .line 164
    .line 165
    iget-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 166
    .line 167
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 168
    .line 169
    if-eqz v0, :cond_2

    .line 170
    .line 171
    :try_start_5
    invoke-interface/range {v0 .. v8}, Lcom/android/internal/statusbar/IStatusBar;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 172
    .line 173
    .line 174
    :catch_2
    :cond_2
    return-void

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
