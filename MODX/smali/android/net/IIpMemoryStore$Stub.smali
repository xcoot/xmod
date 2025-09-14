.class public abstract Landroid/net/IIpMemoryStore$Stub;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/IIpMemoryStore;


# static fields
.field static final TRANSACTION_delete:I = 0x8

.field static final TRANSACTION_deleteCluster:I = 0x9

.field static final TRANSACTION_factoryReset:I = 0x7

.field static final TRANSACTION_findL2Key:I = 0x3

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_isSameNetwork:I = 0x4

.field static final TRANSACTION_retrieveBlob:I = 0x6

.field static final TRANSACTION_retrieveNetworkAttributes:I = 0x5

.field static final TRANSACTION_storeBlob:I = 0x2

.field static final TRANSACTION_storeNetworkAttributes:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    sget-object v0, Landroid/net/IIpMemoryStore;->DESCRIPTOR:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IIpMemoryStore;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    sget-object v0, Landroid/net/IIpMemoryStore;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    instance-of v1, v0, Landroid/net/IIpMemoryStore;

    .line 15
    if-eqz v1, :cond_1

    .line 17
    check-cast v0, Landroid/net/IIpMemoryStore;

    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/net/IIpMemoryStore$Stub$Proxy;

    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v1, -0x1

    .line 26
    iput v1, v0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mCachedVersion:I

    .line 28
    const-string v1, "-1"

    .line 30
    iput-object v1, v0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 32
    iput-object p0, v0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 34
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/net/IIpMemoryStore;->DESCRIPTOR:Ljava/lang/String;

    .line 3
    const v1, 0xffffff

    .line 6
    const/4 v2, 0x1

    .line 7
    if-lt p1, v2, :cond_0

    .line 9
    if-gt p1, v1, :cond_0

    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 14
    :cond_0
    const v3, 0x5f4e5446

    .line 17
    if-ne p1, v3, :cond_1

    .line 19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    return v2

    .line 23
    :cond_1
    if-ne p1, v1, :cond_2

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 28
    invoke-interface {p0}, Landroid/net/IIpMemoryStore;->getInterfaceVersion()I

    .line 31
    move-result p0

    .line 32
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    return v2

    .line 36
    :cond_2
    const v0, 0xfffffe

    .line 39
    if-ne p1, v0, :cond_3

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 44
    invoke-interface {p0}, Landroid/net/IIpMemoryStore;->getInterfaceHash()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return v2

    .line 52
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 58
    move-result p0

    .line 59
    return p0

    .line 60
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 67
    move-result p3

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 71
    move-result-object p2

    .line 72
    invoke-static {p2}, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnStatusAndCountListener;

    .line 75
    move-result-object p2

    .line 76
    invoke-interface {p0, p1, p3, p2}, Landroid/net/IIpMemoryStore;->deleteCluster(Ljava/lang/String;ZLandroid/net/ipmemorystore/IOnStatusAndCountListener;)V

    .line 79
    goto/16 :goto_0

    .line 81
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 88
    move-result p3

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 92
    move-result-object p2

    .line 93
    invoke-static {p2}, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnStatusAndCountListener;

    .line 96
    move-result-object p2

    .line 97
    invoke-interface {p0, p1, p3, p2}, Landroid/net/IIpMemoryStore;->delete(Ljava/lang/String;ZLandroid/net/ipmemorystore/IOnStatusAndCountListener;)V

    .line 100
    goto/16 :goto_0

    .line 102
    :pswitch_2
    invoke-interface {p0}, Landroid/net/IIpMemoryStore;->factoryReset()V

    .line 105
    goto/16 :goto_0

    .line 107
    :pswitch_3
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 122
    move-result-object p2

    .line 123
    invoke-static {p2}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnBlobRetrievedListener;

    .line 126
    move-result-object p2

    .line 127
    invoke-interface {p0, p1, p3, p4, p2}, Landroid/net/IIpMemoryStore;->retrieveBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/IOnBlobRetrievedListener;)V

    .line 130
    goto :goto_0

    .line 131
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 138
    move-result-object p2

    .line 139
    invoke-static {p2}, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    .line 142
    move-result-object p2

    .line 143
    invoke-interface {p0, p1, p2}, Landroid/net/IIpMemoryStore;->retrieveNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;)V

    .line 146
    goto :goto_0

    .line 147
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 154
    move-result-object p3

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 158
    move-result-object p2

    .line 159
    invoke-static {p2}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;

    .line 162
    move-result-object p2

    .line 163
    invoke-interface {p0, p1, p3, p2}, Landroid/net/IIpMemoryStore;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;)V

    .line 166
    goto :goto_0

    .line 167
    :pswitch_6
    sget-object p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 169
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 178
    move-result-object p2

    .line 179
    invoke-static {p2}, Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnL2KeyResponseListener;

    .line 182
    move-result-object p2

    .line 183
    invoke-interface {p0, p1, p2}, Landroid/net/IIpMemoryStore;->findL2Key(Landroid/net/ipmemorystore/NetworkAttributesParcelable;Landroid/net/ipmemorystore/IOnL2KeyResponseListener;)V

    .line 186
    goto :goto_0

    .line 187
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 190
    move-result-object v4

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 194
    move-result-object v5

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 198
    move-result-object v6

    .line 199
    sget-object p1, Landroid/net/ipmemorystore/Blob;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 201
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 204
    move-result-object p1

    .line 205
    move-object v7, p1

    .line 206
    check-cast v7, Landroid/net/ipmemorystore/Blob;

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 211
    move-result-object p1

    .line 212
    invoke-static {p1}, Landroid/net/ipmemorystore/IOnStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnStatusListener;

    .line 215
    move-result-object v8

    .line 216
    move-object v3, p0

    .line 217
    invoke-interface/range {v3 .. v8}, Landroid/net/IIpMemoryStore;->storeBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/IOnStatusListener;)V

    .line 220
    goto :goto_0

    .line 221
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 224
    move-result-object p1

    .line 225
    sget-object p3, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 227
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 230
    move-result-object p3

    .line 231
    check-cast p3, Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 236
    move-result-object p2

    .line 237
    invoke-static {p2}, Landroid/net/ipmemorystore/IOnStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnStatusListener;

    .line 240
    move-result-object p2

    .line 241
    invoke-interface {p0, p1, p3, p2}, Landroid/net/IIpMemoryStore;->storeNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributesParcelable;Landroid/net/ipmemorystore/IOnStatusListener;)V

    .line 244
    :goto_0
    return v2

    .line 245
    :pswitch_data_0
    .packed-switch 0x1
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
