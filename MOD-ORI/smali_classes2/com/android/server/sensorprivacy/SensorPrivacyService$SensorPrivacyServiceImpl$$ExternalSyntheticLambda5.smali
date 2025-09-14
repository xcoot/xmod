.class public final synthetic Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    check-cast p2, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    check-cast p3, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    check-cast p4, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    sget-object p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 31
    .line 32
    const-string p1, "SensorPrivacyService"

    .line 33
    .line 34
    const-string/jumbo p2, "showConfirmDialog"

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const/4 p2, -0x1

    .line 47
    if-eq v5, p2, :cond_0

    .line 48
    .line 49
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p2, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    if-eqz p2, :cond_0

    .line 58
    .line 59
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :cond_0
    const/4 p2, 0x2

    .line 68
    const/4 p3, 0x1

    .line 69
    if-ne v4, p2, :cond_1

    .line 70
    .line 71
    iget-object p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    const p4, 0x1040f4a

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    iget-object p4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 85
    .line 86
    invoke-virtual {p4}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object p4

    .line 90
    const v0, 0x1040f49

    .line 91
    .line 92
    .line 93
    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p4

    .line 97
    goto :goto_0

    .line 98
    :cond_1
    if-ne v4, p3, :cond_2

    .line 99
    .line 100
    iget-object p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 101
    .line 102
    invoke-virtual {p2}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    const p4, 0x1040f4c

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    iget-object p4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 114
    .line 115
    invoke-virtual {p4}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object p4

    .line 119
    const v0, 0x1040f4b

    .line 120
    .line 121
    .line 122
    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p4

    .line 126
    goto :goto_0

    .line 127
    :cond_2
    const-string p2, ""

    .line 128
    .line 129
    move-object p4, p2

    .line 130
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 131
    .line 132
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 133
    .line 134
    const v6, 0x1030223

    .line 135
    .line 136
    .line 137
    invoke-direct {v1, p1, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 138
    .line 139
    .line 140
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    new-instance p2, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$4;

    .line 152
    .line 153
    move-object v0, p2

    .line 154
    move-object v1, p0

    .line 155
    invoke-direct/range {v0 .. v5}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$4;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIII)V

    .line 156
    .line 157
    .line 158
    const p4, 0x1040f4d

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, p4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    new-instance p2, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$3;

    .line 166
    .line 167
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 168
    .line 169
    .line 170
    const/high16 p4, 0x1040000

    .line 171
    .line 172
    invoke-virtual {p1, p4, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    const/16 p4, 0x7d8

    .line 189
    .line 190
    invoke-virtual {p2, p4}, Landroid/view/Window;->setType(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    iget p3, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 205
    .line 206
    or-int/lit8 p3, p3, 0x10

    .line 207
    .line 208
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 209
    .line 210
    new-instance p2, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$5;

    .line 211
    .line 212
    invoke-direct {p2, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$5;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 219
    .line 220
    .line 221
    return-void
.end method
