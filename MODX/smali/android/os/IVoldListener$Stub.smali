.class public abstract Landroid/os/IVoldListener$Stub;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IVoldListener;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IVoldListener"

.field static final TRANSACTION_onDiskCreated:I = 0x1

.field static final TRANSACTION_onDiskDestroyed:I = 0x4

.field static final TRANSACTION_onDiskMetadataChanged:I = 0x3

.field static final TRANSACTION_onDiskScanned:I = 0x2

.field static final TRANSACTION_onEncryptionStateChanged:I = 0xc

.field static final TRANSACTION_onVolumeCreated:I = 0x5

.field static final TRANSACTION_onVolumeDestroyed:I = 0xa

.field static final TRANSACTION_onVolumeInternalPathChanged:I = 0x9

.field static final TRANSACTION_onVolumeMetadataChanged:I = 0x7

.field static final TRANSACTION_onVolumePathChanged:I = 0x8

.field static final TRANSACTION_onVolumeStateChanged:I = 0x6

.field static final TRANSACTION_sendVoldMessage:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "android.os.IVoldListener"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVoldListener;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "android.os.IVoldListener"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    instance-of v1, v0, Landroid/os/IVoldListener;

    .line 15
    if-eqz v1, :cond_1

    .line 17
    check-cast v0, Landroid/os/IVoldListener;

    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/os/IVoldListener$Stub$Proxy;

    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p0, v0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 27
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const-string v0, "android.os.IVoldListener"

    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 6
    const v2, 0xffffff

    .line 9
    if-gt p1, v2, :cond_0

    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 14
    :cond_0
    const v2, 0x5f4e5446

    .line 17
    if-ne p1, v2, :cond_1

    .line 19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    return v1

    .line 23
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 38
    move-result-object p3

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 42
    move-result-object p4

    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 46
    invoke-interface {p0, p1, p3, p4}, Landroid/os/IVoldListener;->onEncryptionStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    goto/16 :goto_0

    .line 51
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 58
    invoke-interface {p0, p1}, Landroid/os/IVoldListener;->sendVoldMessage(Ljava/lang/String;)V

    .line 61
    goto/16 :goto_0

    .line 63
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 70
    invoke-interface {p0, p1}, Landroid/os/IVoldListener;->onVolumeDestroyed(Ljava/lang/String;)V

    .line 73
    goto/16 :goto_0

    .line 75
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 82
    move-result-object p3

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 86
    invoke-interface {p0, p1, p3}, Landroid/os/IVoldListener;->onVolumeInternalPathChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    goto/16 :goto_0

    .line 91
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 98
    move-result-object p3

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 102
    invoke-interface {p0, p1, p3}, Landroid/os/IVoldListener;->onVolumePathChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    goto/16 :goto_0

    .line 107
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 114
    move-result-object p3

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 118
    move-result-object p4

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-interface {p0, p1, p3, p4, v0}, Landroid/os/IVoldListener;->onVolumeMetadataChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    goto :goto_0

    .line 130
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 137
    move-result p3

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 141
    move-result p4

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-interface {p0, p1, p3, p4}, Landroid/os/IVoldListener;->onVolumeStateChanged(Ljava/lang/String;II)V

    .line 148
    goto :goto_0

    .line 149
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 156
    move-result v4

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 160
    move-result-object v5

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 164
    move-result-object v6

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 168
    move-result v7

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    move-object v2, p0

    .line 173
    invoke-interface/range {v2 .. v7}, Landroid/os/IVoldListener;->onVolumeCreated(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 176
    goto :goto_0

    .line 177
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-interface {p0, p1}, Landroid/os/IVoldListener;->onDiskDestroyed(Ljava/lang/String;)V

    .line 187
    goto :goto_0

    .line 188
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 195
    move-result-wide v4

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 199
    move-result-object v6

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 203
    move-result-object v7

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    move-object v2, p0

    .line 208
    invoke-interface/range {v2 .. v7}, Landroid/os/IVoldListener;->onDiskMetadataChanged(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 211
    goto :goto_0

    .line 212
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-interface {p0, p1}, Landroid/os/IVoldListener;->onDiskScanned(Ljava/lang/String;)V

    .line 222
    goto :goto_0

    .line 223
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 226
    move-result-object p1

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 230
    move-result p3

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-interface {p0, p1, p3}, Landroid/os/IVoldListener;->onDiskCreated(Ljava/lang/String;I)V

    .line 237
    :goto_0
    return v1

    .line 238
    nop

    .line 239
    :pswitch_data_0
    .packed-switch 0x1
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
