.class public abstract Landroid/os/IDumpstate$Stub;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IDumpstate;


# static fields
.field static final TRANSACTION_cancelBugreport:I = 0x3

.field static final TRANSACTION_preDumpUiData:I = 0x1

.field static final TRANSACTION_retrieveBugreport:I = 0x4

.field static final TRANSACTION_startBugreport:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "android.os.IDumpstate"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstate;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "android.os.IDumpstate"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    instance-of v1, v0, Landroid/os/IDumpstate;

    .line 15
    if-eqz v1, :cond_1

    .line 17
    check-cast v0, Landroid/os/IDumpstate;

    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/os/IDumpstate$Stub$Proxy;

    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p0, v0, Landroid/os/IDumpstate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    const-string v2, "android.os.IDumpstate"

    .line 5
    const/4 v10, 0x1

    .line 6
    if-lt v1, v10, :cond_0

    .line 8
    const v3, 0xffffff

    .line 11
    if-gt v1, v3, :cond_0

    .line 13
    move-object v3, p2

    .line 14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v3, p2

    .line 19
    :goto_0
    const v4, 0x5f4e5446

    .line 22
    if-ne v1, v4, :cond_1

    .line 24
    move-object/from16 v11, p3

    .line 26
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    return v10

    .line 30
    :cond_1
    move-object/from16 v11, p3

    .line 32
    if-eq v1, v10, :cond_5

    .line 34
    const/4 v2, 0x2

    .line 35
    if-eq v1, v2, :cond_4

    .line 37
    const/4 v2, 0x3

    .line 38
    if-eq v1, v2, :cond_3

    .line 40
    const/4 v2, 0x4

    .line 41
    if-eq v1, v2, :cond_2

    .line 43
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 46
    move-result v0

    .line 47
    return v0

    .line 48
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 51
    move-result v1

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 59
    move-result v4

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 71
    move-result v7

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 75
    move-result v8

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 79
    move-result-object v9

    .line 80
    invoke-static {v9}, Landroid/os/IDumpstateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstateListener;

    .line 83
    move-result-object v9

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 87
    move-object v0, p0

    .line 88
    move v3, v4

    .line 89
    move-object v4, v5

    .line 90
    move-object v5, v6

    .line 91
    move v6, v7

    .line 92
    move v7, v8

    .line 93
    move-object v8, v9

    .line 94
    invoke-interface/range {v0 .. v8}, Landroid/os/IDumpstate;->retrieveBugreport(ILjava/lang/String;ILjava/io/FileDescriptor;Ljava/lang/String;ZZLandroid/os/IDumpstateListener;)V

    .line 97
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 104
    move-result v1

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-interface {p0, v1, v2}, Landroid/os/IDumpstate;->cancelBugreport(ILjava/lang/String;)V

    .line 115
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    goto :goto_1

    .line 119
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 122
    move-result v1

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 138
    move-result v6

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 142
    move-result v7

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 146
    move-result-object v8

    .line 147
    invoke-static {v8}, Landroid/os/IDumpstateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstateListener;

    .line 150
    move-result-object v8

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 154
    move-result v9

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 158
    move-result v12

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    move-object v0, p0

    .line 163
    move-object v3, v4

    .line 164
    move-object v4, v5

    .line 165
    move v5, v6

    .line 166
    move v6, v7

    .line 167
    move-object v7, v8

    .line 168
    move v8, v9

    .line 169
    move v9, v12

    .line 170
    invoke-interface/range {v0 .. v9}, Landroid/os/IDumpstate;->startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;IILandroid/os/IDumpstateListener;ZZ)V

    .line 173
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    goto :goto_1

    .line 177
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-interface {p0, v1}, Landroid/os/IDumpstate;->preDumpUiData(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    :goto_1
    return v10
.end method
