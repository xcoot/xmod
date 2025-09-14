.class public abstract Lcom/att/iqi/IIQIBroker$Stub;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/att/iqi/IIQIBroker;


# static fields
.field static final TRANSACTION_disableService:I = 0xd

.field static final TRANSACTION_forceStopService:I = 0xc

.field static final TRANSACTION_getTimestamp:I = 0x9

.field static final TRANSACTION_registerMetricQueryCallback:I = 0x3

.field static final TRANSACTION_registerMetricSourcingCallback:I = 0x5

.field static final TRANSACTION_registerProfileChangedCallback:I = 0x7

.field static final TRANSACTION_registerServiceChangedCallback:I = 0xa

.field static final TRANSACTION_setUnlockCode:I = 0xe

.field static final TRANSACTION_shouldSubmitMetric:I = 0x1

.field static final TRANSACTION_submitMetric:I = 0x2

.field static final TRANSACTION_unregisterMetricQueryCallback:I = 0x4

.field static final TRANSACTION_unregisterMetricSourcingCallback:I = 0x6

.field static final TRANSACTION_unregisterProfileChangedCallback:I = 0x8

.field static final TRANSACTION_unregisterServiceChangedCallback:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.att.iqi.IIQIBroker"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIBroker;
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
    const-string v0, "com.att.iqi.IIQIBroker"

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
    instance-of v1, v0, Lcom/att/iqi/IIQIBroker;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/att/iqi/IIQIBroker;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/att/iqi/IIQIBroker$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/att/iqi/IIQIBroker$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "com.att.iqi.IIQIBroker"

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
    invoke-interface {p0, p1, p2}, Lcom/att/iqi/IIQIBroker;->setUnlockCode(J)Z

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
    invoke-interface {p0}, Lcom/att/iqi/IIQIBroker;->disableService()V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :pswitch_2
    invoke-interface {p0}, Lcom/att/iqi/IIQIBroker;->forceStopService()V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lcom/att/iqi/IServiceStateChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IServiceStateChangeCallback;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p0, p1}, Lcom/att/iqi/IIQIBroker;->unregisterServiceChangedCallback(Lcom/att/iqi/IServiceStateChangeCallback;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1}, Lcom/att/iqi/IServiceStateChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IServiceStateChangeCallback;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-interface {p0, p1}, Lcom/att/iqi/IIQIBroker;->registerServiceChangedCallback(Lcom/att/iqi/IServiceStateChangeCallback;)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_0

    .line 78
    .line 79
    :pswitch_5
    invoke-interface {p0}, Lcom/att/iqi/IIQIBroker;->getTimestamp()J

    .line 80
    .line 81
    .line 82
    move-result-wide p0

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_0

    .line 90
    .line 91
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {p1}, Lcom/att/iqi/IProfileChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IProfileChangedCallback;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-interface {p0, p1}, Lcom/att/iqi/IIQIBroker;->unregisterProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_0

    .line 103
    .line 104
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p1}, Lcom/att/iqi/IProfileChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IProfileChangedCallback;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-interface {p0, p1}, Lcom/att/iqi/IIQIBroker;->registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :pswitch_8
    sget-object p1, Lcom/att/iqi/lib/Metric$ID;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 117
    .line 118
    invoke-static {p2, p1}, Lcom/att/iqi/IIQIBroker$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Lcom/att/iqi/lib/Metric$ID;

    .line 123
    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-static {p2}, Lcom/att/iqi/IMetricSourcingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IMetricSourcingCallback;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-interface {p0, p1, p2}, Lcom/att/iqi/IIQIBroker;->unregisterMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :pswitch_9
    sget-object p1, Lcom/att/iqi/lib/Metric$ID;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 137
    .line 138
    invoke-static {p2, p1}, Lcom/att/iqi/IIQIBroker$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Lcom/att/iqi/lib/Metric$ID;

    .line 143
    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-static {p2}, Lcom/att/iqi/IMetricSourcingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IMetricSourcingCallback;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-interface {p0, p1, p2}, Lcom/att/iqi/IIQIBroker;->registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :pswitch_a
    sget-object p1, Lcom/att/iqi/lib/Metric$ID;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 157
    .line 158
    invoke-static {p2, p1}, Lcom/att/iqi/IIQIBroker$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    check-cast p1, Lcom/att/iqi/lib/Metric$ID;

    .line 163
    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-static {p2}, Lcom/att/iqi/IMetricQueryCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IMetricQueryCallback;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-interface {p0, p1, p2}, Lcom/att/iqi/IIQIBroker;->unregisterMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :pswitch_b
    sget-object p1, Lcom/att/iqi/lib/Metric$ID;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 177
    .line 178
    invoke-static {p2, p1}, Lcom/att/iqi/IIQIBroker$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    check-cast p1, Lcom/att/iqi/lib/Metric$ID;

    .line 183
    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-static {p2}, Lcom/att/iqi/IMetricQueryCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IMetricQueryCallback;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    invoke-interface {p0, p1, p2}, Lcom/att/iqi/IIQIBroker;->registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    .line 193
    .line 194
    .line 195
    goto :goto_0

    .line 196
    :pswitch_c
    sget-object p1, Lcom/att/iqi/lib/Metric;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 197
    .line 198
    invoke-static {p2, p1}, Lcom/att/iqi/IIQIBroker$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    check-cast p1, Lcom/att/iqi/lib/Metric;

    .line 203
    .line 204
    invoke-interface {p0, p1}, Lcom/att/iqi/IIQIBroker;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    .line 205
    .line 206
    .line 207
    goto :goto_0

    .line 208
    :pswitch_d
    sget-object p1, Lcom/att/iqi/lib/Metric$ID;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 209
    .line 210
    invoke-static {p2, p1}, Lcom/att/iqi/IIQIBroker$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    check-cast p1, Lcom/att/iqi/lib/Metric$ID;

    .line 215
    .line 216
    invoke-interface {p0, p1}, Lcom/att/iqi/IIQIBroker;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    .line 217
    .line 218
    .line 219
    move-result p0

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    .line 225
    .line 226
    :goto_0
    return v1

    .line 227
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    return v1

    .line 231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
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
