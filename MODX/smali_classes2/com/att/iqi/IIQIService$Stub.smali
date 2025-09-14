.class public abstract Lcom/att/iqi/IIQIService$Stub;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/att/iqi/IIQIService;


# static fields
.field static final TRANSACTION_disableService:I = 0xc

.field static final TRANSACTION_forceStopService:I = 0xb

.field static final TRANSACTION_getTimestamp:I = 0xa

.field static final TRANSACTION_registerMetricQueryCallback:I = 0x3

.field static final TRANSACTION_registerMetricSourcingCallback:I = 0x5

.field static final TRANSACTION_registerProfileChangedCallback:I = 0x7

.field static final TRANSACTION_reportKeyCode:I = 0x9

.field static final TRANSACTION_setUnlockCode:I = 0xd

.field static final TRANSACTION_shouldSubmitMetric:I = 0x1

.field static final TRANSACTION_submitMetric:I = 0x2

.field static final TRANSACTION_unregisterMetricQueryCallback:I = 0x4

.field static final TRANSACTION_unregisterMetricSourcingCallback:I = 0x6

.field static final TRANSACTION_unregisterProfileChangedCallback:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.att.iqi.IIQIService"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.att.iqi.IIQIService"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Lcom/att/iqi/IIQIService;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/att/iqi/IIQIService;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/att/iqi/IIQIService$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/att/iqi/IIQIService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const-string v0, "com.att.iqi.IIQIService"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    .line 6
    const v2, 0xffffff

    .line 7
    .line 8
    .line 9
    if-gt p1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const v2, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-eq p1, v2, :cond_1

    .line 18
    .line 19
    packed-switch p1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    invoke-interface {p0, p1, p2}, Lcom/att/iqi/IIQIService;->setUnlockCode(J)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :pswitch_1
    invoke-interface {p0}, Lcom/att/iqi/IIQIService;->disableService()V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :pswitch_2
    invoke-interface {p0}, Lcom/att/iqi/IIQIService;->forceStopService()V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :pswitch_3
    invoke-interface {p0}, Lcom/att/iqi/IIQIService;->getTimestamp()J

    .line 54
    .line 55
    .line 56
    move-result-wide p0

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p0, p1}, Lcom/att/iqi/IIQIService;->reportKeyCode([B)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {p1}, Lcom/att/iqi/IProfileChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IProfileChangedCallback;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-interface {p0, p1}, Lcom/att/iqi/IIQIService;->unregisterProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p1}, Lcom/att/iqi/IProfileChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IProfileChangedCallback;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-interface {p0, p1}, Lcom/att/iqi/IIQIService;->registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :pswitch_7
    sget-object p1, Lcom/att/iqi/lib/Metric$ID;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 107
    .line 108
    invoke-static {p2, p1}, Lcom/att/iqi/IIQIService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Lcom/att/iqi/lib/Metric$ID;

    .line 113
    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-static {p2}, Lcom/att/iqi/IMetricSourcingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IMetricSourcingCallback;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-interface {p0, p1, p2}, Lcom/att/iqi/IIQIService;->unregisterMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :pswitch_8
    sget-object p1, Lcom/att/iqi/lib/Metric$ID;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 127
    .line 128
    invoke-static {p2, p1}, Lcom/att/iqi/IIQIService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Lcom/att/iqi/lib/Metric$ID;

    .line 133
    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-static {p2}, Lcom/att/iqi/IMetricSourcingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IMetricSourcingCallback;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-interface {p0, p1, p2}, Lcom/att/iqi/IIQIService;->registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :pswitch_9
    sget-object p1, Lcom/att/iqi/lib/Metric$ID;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 147
    .line 148
    invoke-static {p2, p1}, Lcom/att/iqi/IIQIService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    check-cast p1, Lcom/att/iqi/lib/Metric$ID;

    .line 153
    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-static {p2}, Lcom/att/iqi/IMetricQueryCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IMetricQueryCallback;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-interface {p0, p1, p2}, Lcom/att/iqi/IIQIService;->unregisterMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :pswitch_a
    sget-object p1, Lcom/att/iqi/lib/Metric$ID;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 167
    .line 168
    invoke-static {p2, p1}, Lcom/att/iqi/IIQIService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    check-cast p1, Lcom/att/iqi/lib/Metric$ID;

    .line 173
    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-static {p2}, Lcom/att/iqi/IMetricQueryCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IMetricQueryCallback;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    invoke-interface {p0, p1, p2}, Lcom/att/iqi/IIQIService;->registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    .line 183
    .line 184
    .line 185
    goto :goto_0

    .line 186
    :pswitch_b
    sget-object p1, Lcom/att/iqi/lib/Metric;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 187
    .line 188
    invoke-static {p2, p1}, Lcom/att/iqi/IIQIService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    check-cast p1, Lcom/att/iqi/lib/Metric;

    .line 193
    .line 194
    invoke-interface {p0, p1}, Lcom/att/iqi/IIQIService;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :pswitch_c
    sget-object p1, Lcom/att/iqi/lib/Metric$ID;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 199
    .line 200
    invoke-static {p2, p1}, Lcom/att/iqi/IIQIService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    check-cast p1, Lcom/att/iqi/lib/Metric$ID;

    .line 205
    .line 206
    invoke-interface {p0, p1}, Lcom/att/iqi/IIQIService;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    .line 215
    .line 216
    :goto_0
    return v1

    .line 217
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    return v1

    .line 221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
