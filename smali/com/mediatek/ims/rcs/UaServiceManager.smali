.class public Lcom/mediatek/ims/rcs/UaServiceManager;
.super Ljava/lang/Object;
.source "UaServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;,
        Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;,
        Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    }
.end annotation


# static fields
.field private static volatile INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager; = null

.field private static final LOG_TAG:Ljava/lang/String; = "[SR-IMS][UaServiceManager]"


# instance fields
.field private callbackHandler:Landroid/os/Handler;

.field private hdlrThread:Landroid/os/HandlerThread;

.field private mContext:Landroid/content/Context;

.field mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;",
            ">;"
        }
    .end annotation
.end field

.field private serviceCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

.field private serviceStarted:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 765
    new-instance v0, Lcom/mediatek/ims/rcs/UaServiceManager$3;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcs/UaServiceManager$3;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    .line 837
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 815
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mContext:Landroid/content/Context;

    .line 816
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/RcsUaService$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 63
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 63
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->callbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->logE(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 63
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/mediatek/ims/rcs/UaServiceManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 68
    sget-object v0, Lcom/mediatek/ims/rcs/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager;

    if-nez v0, :cond_1

    .line 69
    const-class v0, Lcom/mediatek/ims/rcs/UaServiceManager;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/rcs/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcs/UaServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/ims/rcs/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 73
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 75
    :cond_1
    :goto_0
    sget-object v0, Lcom/mediatek/ims/rcs/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager;

    return-object v0
.end method

.method public static deleteInstance()V
    .locals 4

    .line 79
    sget-object v0, Lcom/mediatek/ims/rcs/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager;

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/mediatek/ims/rcs/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 81
    .local v1, "serviceContext":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    sget-object v2, Lcom/mediatek/ims/rcs/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->stopService(I)V

    .line 82
    .end local v1    # "serviceContext":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;
    .locals 1

    .line 87
    sget-object v0, Lcom/mediatek/ims/rcs/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager;

    return-object v0
.end method

.method private logD(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 819
    const-string v0, "[SR-IMS][UaServiceManager]"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    return-void
.end method

.method private logE(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 831
    const-string v0, "[SR-IMS][UaServiceManager]"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    return-void
.end method

.method private logI(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 823
    const-string v0, "[SR-IMS][UaServiceManager]"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    return-void
.end method

.method private logW(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 827
    const-string v0, "[SR-IMS][UaServiceManager]"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    return-void
.end method


# virtual methods
.method public activate(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]activate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUaService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUaService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->activate()V

    .line 211
    :cond_0
    return-void
.end method

.method public addCapability(ILcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "capability"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]addCapability >> capability["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUaService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcsua/RcsUaService;->addCapability(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 224
    :cond_0
    return-void
.end method

.method public deactivate(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]deactivate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUaService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUaService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->deactivate()V

    .line 217
    :cond_0
    return-void
.end method

.method public getAcsConfigInt(ILjava/lang/String;)I
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "config"    # Ljava/lang/String;

    .line 316
    const/4 v0, 0x0

    .line 318
    .local v0, "result":I
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAcsAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUaService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/mediatek/ims/rcsua/RcsUaService;->getAcsConfigInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 321
    :cond_0
    const-string v1, "Not ready to getAcsConfigInt"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->logE(Ljava/lang/String;)V

    .line 323
    :goto_0
    return v0
.end method

.method public getAcsConfigString(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "config"    # Ljava/lang/String;

    .line 327
    const/4 v0, 0x0

    .line 329
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAcsAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUaService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/mediatek/ims/rcsua/RcsUaService;->getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 332
    :cond_0
    const-string v1, "Not ready to getAcsConfigString"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->logE(Ljava/lang/String;)V

    .line 334
    :goto_0
    return-object v0
.end method

.method public getAcsConfiguration(I)Lcom/mediatek/ims/rcsua/AcsConfiguration;
    .locals 3
    .param p1, "phoneId"    # I

    .line 305
    const/4 v0, 0x0

    .line 307
    .local v0, "configuration":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAcsAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUaService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;

    move-result-object v0

    goto :goto_0

    .line 310
    :cond_0
    const-string v1, "Not ready to getAcsConfiguration"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->logE(Ljava/lang/String;)V

    .line 312
    :goto_0
    return-object v0
.end method

.method public getCallbackHandler()Landroid/os/Handler;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->callbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getCapabilities(I)Lcom/mediatek/ims/rcsua/Capability;
    .locals 2
    .param p1, "phoneId"    # I

    .line 357
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUaService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 357
    :goto_0
    return-object v0
.end method

.method public getRegistrationInfo(I)Lcom/mediatek/ims/rcsua/RegistrationInfo;
    .locals 3
    .param p1, "phoneId"    # I

    .line 362
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getImsClient()Lcom/mediatek/ims/rcsua/Client;

    move-result-object v0

    :goto_0
    nop

    .line 364
    .local v0, "imsClient":Lcom/mediatek/ims/rcsua/Client;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/Client;->getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getUpdateRcsFeatureTagState(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 378
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 379
    .local v0, "serviceContext":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUpdateRcsFeatureTagState()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public imsRegistered(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 351
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getImsClient()Lcom/mediatek/ims/rcsua/Client;

    move-result-object v0

    :goto_0
    nop

    .line 353
    .local v0, "imsClient":Lcom/mediatek/ims/rcsua/Client;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/Client;->getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isActivated(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 345
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 346
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUaService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 347
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUaService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 345
    :goto_0
    return v0
.end method

.method public isCcNotified(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 389
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 390
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->isCcNotified()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 389
    :goto_0
    return v0
.end method

.method public readConfiguraion(I)Lcom/mediatek/ims/rcsua/Configuration;
    .locals 1
    .param p1, "phoneId"    # I

    .line 368
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->imsRegistered(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->getRegistrationInfo(I)Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->readImsConfiguration()Lcom/mediatek/ims/rcsua/Configuration;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public registerAcsCallback(ILcom/mediatek/ims/rcsua/AcsEventCallback;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]registerAcsCallback >> callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 179
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getAcsCallback()Lcom/mediatek/ims/rcsua/AcsEventCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 182
    return-void

    .line 184
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAcsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUaService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcsua/RcsUaService;->registerAcsEventCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V

    goto :goto_0

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->setAcsCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V

    .line 189
    :goto_0
    return-void
.end method

.method public registerSipCallback(ILcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]registerSipCallback >> callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 262
    .local v0, "serviceContext":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->addSipCallback(Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V

    .line 265
    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getSipChannel()Lcom/mediatek/ims/rcsua/SipChannel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->callbackHandler:Landroid/os/Handler;

    new-instance v2, Lcom/mediatek/ims/rcs/UaServiceManager$2;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$2;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager;Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 277
    :cond_0
    return-void
.end method

.method public registerStateCallback(ILcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 136
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 137
    .local v0, "serviceContext":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]registerStateCallback >> context["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "],callback["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 139
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->addStateCallback(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V

    .line 142
    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getImsClient()Lcom/mediatek/ims/rcsua/Client;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->callbackHandler:Landroid/os/Handler;

    new-instance v2, Lcom/mediatek/ims/rcs/UaServiceManager$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$1;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager;ILcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    :cond_0
    return-void
.end method

.method public removeCapability(ILcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "capability"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]removeCapability >> capability["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUaService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcsua/RcsUaService;->removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 231
    :cond_0
    return-void
.end method

.method public sendSipMessage(ILandroid/telephony/ims/SipMessage;)Z
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "message"    # Landroid/telephony/ims/SipMessage;

    .line 248
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 249
    .local v0, "serviceContext":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getSipChannel()Lcom/mediatek/ims/rcsua/SipChannel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getSipChannel()Lcom/mediatek/ims/rcsua/SipChannel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/rcsua/SipChannel;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getSipChannel()Lcom/mediatek/ims/rcsua/SipChannel;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/ims/SipMessage;->toEncodedMessage()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/ims/rcsua/SipChannel;->sendMessageAsync([BLjava/lang/String;)V

    .line 253
    const/4 v1, 0x1

    return v1

    .line 255
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public serviceConnected(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 338
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUaService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    :goto_0
    nop

    .line 341
    .local v0, "uaService":Lcom/mediatek/ims/rcsua/RcsUaService;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public setCcNotified(IZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "isNotified"    # Z

    .line 383
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 384
    .local v0, "serviceContext":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->setCcNotified(Z)V

    .line 386
    :cond_0
    return-void
.end method

.method public setRcsClientConfiguration(ILandroid/telephony/ims/RcsClientConfiguration;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "rcc"    # Landroid/telephony/ims/RcsClientConfiguration;

    .line 289
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAcsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUaService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcsua/RcsUaService;->setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V

    goto :goto_0

    .line 292
    :cond_0
    const-string v0, "Not ready to setRcsClientconfiguration"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logE(Ljava/lang/String;)V

    .line 294
    :goto_0
    return-void
.end method

.method public setUpdateRcsFeatureTagState(IZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "state"    # Z

    .line 372
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 373
    .local v0, "serviceContext":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->setUpdateRcsFeatureTagState(Z)V

    .line 375
    :cond_0
    return-void
.end method

.method public startService(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]startService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IMS-RCSUA-WORKER"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->hdlrThread:Landroid/os/HandlerThread;

    .line 95
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 96
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->hdlrThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->callbackHandler:Landroid/os/Handler;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager;I)V

    .line 101
    .local v0, "serviceContext":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v1, "options":Landroid/os/Bundle;
    const/4 v2, 0x1

    const-string v3, "OPTION_ROI_SUPPORT"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    invoke-static {v2, p1, v3, v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->setUaService(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    .line 106
    .end local v0    # "serviceContext":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    .end local v1    # "options":Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method public stopService(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]stopService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 112
    .local v0, "serviceContext":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUaService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 113
    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getSipChannel()Lcom/mediatek/ims/rcsua/SipChannel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getSipChannel()Lcom/mediatek/ims/rcsua/SipChannel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ims/rcsua/SipChannel;->close()V

    .line 115
    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->setSipChannel(Lcom/mediatek/ims/rcsua/SipChannel;)V

    .line 117
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->clearSipCallbacks()V

    .line 118
    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getImsClient()Lcom/mediatek/ims/rcsua/Client;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 119
    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUaService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getImsClient()Lcom/mediatek/ims/rcsua/Client;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/rcsua/RcsUaService;->unregisterClient(Lcom/mediatek/ims/rcsua/Client;)V

    .line 120
    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->setImsClient(Lcom/mediatek/ims/rcsua/Client;)V

    .line 122
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->clearStateCallbacks()V

    .line 124
    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUaService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ims/rcsua/RcsUaService;->stopService()V

    .line 125
    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->setUaService(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    .line 127
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 128
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->hdlrThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_3

    .line 129
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 130
    iput-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->hdlrThread:Landroid/os/HandlerThread;

    .line 133
    :cond_3
    return-void
.end method

.method public triggerAcsRequest(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "reason"    # I

    .line 297
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAcsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUaService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcsua/RcsUaService;->triggerAcsRequest(I)V

    goto :goto_0

    .line 300
    :cond_0
    const-string v0, "Not ready to triggerAcRequest"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logE(Ljava/lang/String;)V

    .line 302
    :goto_0
    return-void
.end method

.method public triggerRestoration(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]triggerRestoration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUaService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->triggerRestoration()V

    .line 245
    :cond_0
    return-void
.end method

.method public unregisterAcsCallback(ILcom/mediatek/ims/rcsua/AcsEventCallback;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]unregisterAcsCallback >> callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 194
    if-nez p2, :cond_0

    .line 195
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 198
    return-void

    .line 200
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAcsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUaService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcsua/RcsUaService;->unregisterAcsEventCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V

    goto :goto_0

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getAcsCallback()Lcom/mediatek/ims/rcsua/AcsEventCallback;

    move-result-object v0

    if-ne v0, p2, :cond_3

    .line 203
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->setAcsCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V

    .line 205
    :cond_3
    :goto_0
    return-void
.end method

.method public unregisterSipCallback(ILcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]unregisterSipCallback >> callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 283
    .local v0, "serviceContext":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->removeSipCallback(Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V

    .line 286
    :cond_0
    return-void
.end method

.method public unregisterStateCallback(ILcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]unregisterStateCallback >> callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->removeStateCallback(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V

    .line 173
    :cond_0
    return-void
.end method

.method public updateCapabilities(ILcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "capability"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]updateCapabilities >> capability["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUaService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/rcsua/RcsUaService;->updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 238
    :cond_0
    return-void
.end method
